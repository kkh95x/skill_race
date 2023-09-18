


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/core/domain/specialization.dart';
import 'package:skill_race/core/presentation/components/specialization_component.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/get_skills_provider.dart';
import 'package:skill_race/src/hiring/application/need_employ_form.dart';
import 'package:skill_race/src/hiring/domain/single_specialization.dart';

class HiringDialogs{
  HiringDialogs._();
  static Future showAddSpecialzation(BuildContext context,WidgetRef ref)async{
    final oldList=ref.read(addNeedEmployeFormProvider).control("specializationList").value as List<SingleSpecilazation>? ??[];
   await showDialog(context: context, builder: (context) {
    final controlll =ScrollController();
     return ReactiveForm(
      formGroup:ref.read(addNeedEmployeFormProvider),
       child: AlertDialog(
       
        title: const Column(
        children: [Text("Add Specialzation",style: TextStyle(color: Colors.black),),Divider()],
        ),
        content: SizedBox(
          height: 500.h,


          child: SingleChildScrollView(
            controller: controlll,
            child: ReactiveFormConsumer(
              builder:(context, formGroup, child)  {
                return SpecilaizationComponent(
                  onPress: () {
                    controlll.animateTo(controlll.position.maxScrollExtent, duration: const Duration(milliseconds: 200), curve: Curves.linear);
                  },
                  // disposeString: oldList.map((e) => e.specialization).toList(),
                  formGroup: formGroup, controlName: "specialization", supControll: "subSpecialization");
              }
            ),
          ),
        ),
        actions: [
          ReactiveFormConsumer(
            builder: (context, formGroup, child) {
              final sp=formGroup.control("specialization").value as Specialization?;
              final supSp=formGroup.control("subSpecialization").value as String?;
              return DynamicButton(
                isDisabled: sp==null,
                title: "Add",
              
                onPressed: () {
               
                  formGroup.control("specializationList").value=[...oldList,SingleSpecilazation(specialization: sp!.name, subSpecialization: supSp)];
                  formGroup.control("specialization").reset();
                  formGroup.control("subSpecialization").reset();
                  context.pop();
                
              },);
            }
          )
        ],
       ),
     );
   },);

  }

  static Future showAddSkills(BuildContext context,WidgetRef ref)async{
    final oldList=ref.read(addNeedEmployeFormProvider).control("skills").value as List<String>? ??[];
       final form=FormGroup({
      "skill":FormControl<String>(validators: [Validators.required] )
    });
   await showDialog(context: context, builder: (context) {
     return ReactiveForm(
      formGroup:form,
       child: AlertDialog(
       
        title: const Column(
        children: [Text("Add Skill",style: TextStyle(color: Colors.black),),Divider()],
        ),
        content: SizedBox(
          height: 100.h,
          child: Consumer(
                   builder:(context, ref, child) {
                    
                     return ref.watch(getSkillsProvider).when(data: (data) {
                      final currentSkill=data.where((element) => !oldList.contains(element.name)).toList();
                       return  DropdownSearchWidget
                (
                      title: "Add Skill",
                      search: false,
                      formControlName: "skill",
                placeholder: "",
                item:currentSkill.map((e) => e.name).toList(),
                
        
                );
                     }, error: (error, stackTrace) => Center(child: Text("Error: ${error.toString()}"),), loading:() {
                       return Shimmer.fromColors(baseColor: Colors.grey, highlightColor: Colors.white, child:
        
                       Column(
                        children: [
                          const Text("****"),
                          Container(height: 50.h,
        
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20.r)),)
                        ],
                       ));
        
                     },)
                     
                   ;
                   }
                 ),
        ),
        actions: [
          ReactiveFormConsumer(
            builder: (context, formGroup, child) {
              final skill=form.control("skill").value as String?;
              return DynamicButton(
                isDisabled: skill==null,
                title: "Add",
              
                onPressed: () {
               
                 ref.read(addNeedEmployeFormProvider).control("skills").value=[...oldList,skill!];
                 context.pop();
                
              },);
            }
          )
        ],
       ),
     );
   },);

  }
  static Future showEditCompany(BuildContext context,WidgetRef ref)async{
    final user=ref.read(userAuthNotifer).currentUser;
       final form=FormGroup({
      "companyName":FormControl<String>(validators: [Validators.required],value: user?.hiring?.companyName ),
      "companyField":FormControl<String>(value: user?.hiring?.companyField )

    });
   await showDialog(context: context, builder: (context) {
     return ReactiveForm(
      formGroup:form,
       child: AlertDialog(
       
        // title: const Column(
        // // children: [Text("Add Skill",style: TextStyle(color: Colors.black),),Divider()],
        // ),
        content:SizedBox(
          height: 200.h,
          child: ReactiveForm(formGroup: form, child: Column(
            children: [
              SizedBox(height: 10.h,),
        
              DynamicInput(placeholder: "",
              title: "Company Name",
              control: "companyName",
              fillColor: Colors.white,
              ),
              SizedBox(height: 10.h,),
              
              DynamicInput(placeholder: "",
              title: "Company Field",
              control: "companyField",
                            fillColor: Colors.white,

              ),
            ],
          )),
        )
        ,
        actions: [
          ReactiveFormConsumer(
            builder: (context, formGroup, child) {
             
              return DynamicButton(
                isDisabled: !form.valid,
                title: "Update",
              
                onPressed: () async{
                                   final user=ref.read(userAuthNotifer).currentUser;

                  if(user?.hiring!=null){
                 final comanyName=form.control("companyName").value;
                 final companyField=form.control("companyField").value;
                 await ref.read(userAuthNotifer.notifier).updateUser(user!.copyWith(hiring: user.hiring!.copyWith(companyField: companyField,companyName: comanyName)));
                 if(context.mounted){
                 context.pop();}

                 }
                
              },);
            }
          )
        ],
       ),
     );
   },);

  }
}