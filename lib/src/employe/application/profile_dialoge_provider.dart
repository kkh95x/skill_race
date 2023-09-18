

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/get_skills_provider.dart';

class EmpProfileDialoges{
  EmpProfileDialoges._();
  static Future showEditBioDialoge({required BuildContext context,required WidgetRef ref,required String? oldBio})async{
    final form=FormGroup({
      "bio":FormControl<String>(validators: [Validators.required,Validators.maxLength(250),],value: oldBio)
    });
   await showDialog(context: context, builder: (context) {
     return AlertDialog(
      scrollable: true,
      elevation: 10,
      
      // backgroundColor:Theme.of(context).colorScheme.surfaceVariant.withOpacity(.78),
      content: ReactiveForm(
        formGroup: form,
        child: SizedBox(
         
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h,),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Assets.icons.png.closeDialog.image(),
                ),
              ),
              
              DynamicInput(placeholder: "",
              fillColor: Colors.white,
              title: "Edit Bio",
              control: "bio",
              multiLine: true,
              ),
              SizedBox(height: 40.h,),
              ReactiveFormConsumer(
                builder:(context, formGroup, child) {
                  return DynamicButton(
                    title: "Save",
                    isDisabled: !form.valid,
                    onPressed:  ()async {
                      final user=ref.read(userAuthNotifer).currentUser;
                      if(user!=null){
                      final bio=form.control("bio").value;
                     await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(bio:bio ));
                     if(context.mounted){
                     context.pop();
          
                     }
                     BotToast.showText(text: "Bio Updated");
                     
                    }
                  },);
                }
              ),
              // SizedBox(height:40.h,)
            ],
          ),
        ),
      ),
     ); 
   },);

  }

  static Future showDanger({required BuildContext context,required WidgetRef ref,required String text,required void Function() onPressed})async{
await showDialog(context: context, builder: (context) {
     return AlertDialog(
      scrollable: true,
      elevation: 10,
       title: Column(
        
        children: [Text("Warning",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18.sp,fontWeight: FontWeight.w400),), Divider()],
       ),
      // backgroundColor:Theme.of(context).colorScheme.surfaceVariant.withOpacity(.78),
      content:          Expanded(child: Text(text)),

      // Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     // Icon(Icons.dangerous,color: Theme.of(context).colorScheme.primary,),
      //     // Assets.icons.png.delete.image(),
      //     // SizedBox(width: 10.w,),
      //   ],
        
      // ),
      actionsAlignment:MainAxisAlignment.spaceEvenly,
      actions: [
        DynamicButton(
          title: "Yes",
          isExpandedWidth: false,
          onPressed: () {
           onPressed.call();context.pop();
                   },),

                   DynamicButton(
                    type: ButtonTypes.secondary,
          title: "No",
          isExpandedWidth: false,
          onPressed: () {
         context.pop();
                   },)

      ],
     ); 
   },);

  }
  static Future showAddLanguageDialog({required BuildContext context,required WidgetRef ref,})async{
    final form=FormGroup({
      "language":FormControl<String>(validators: [Validators.required] )
    });
    final oldLanguage=ref.read(userAuthNotifer).currentUser?.employee?.language??[];
    final curreantLanuguage=languageList.where((element) => !oldLanguage.contains(element)).toList();
   await showDialog(context: context, builder: (context) {
     return AlertDialog(
      scrollable: true,
      elevation: 10,
      
      // backgroundColor:Theme.of(context).colorScheme.surfaceVariant.withOpacity(.78),
      content: ReactiveForm(
        formGroup: form,
        child: SizedBox(
         
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h,),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Assets.icons.png.closeDialog.image(),
                ),
              ),
              SizedBox(height: 20.h,),
              
              DropdownSearchWidget
              (
                title: "Language",
                formControlName: "language",
              placeholder: "",
              item:curreantLanuguage,

              ),
              SizedBox(height: 40.h,),
              ReactiveFormConsumer(
                builder:(context, formGroup, child) {
                  return DynamicButton(
                    title: "Save",
                    isDisabled: !form.valid,
                    onPressed:  ()async {
                      final user=ref.read(userAuthNotifer).currentUser;
                      if(user!=null){
                      final language=form.control("language").value;
                     await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(employee:user.employee?.copyWith(language:[...oldLanguage,language] )));
                     if(context.mounted){
                     context.pop();
          
                     }
                     BotToast.showText(text: "Saved");
                     
                    }
                  },);
                }
              ),
              // SizedBox(height:40.h,)
            ],
          ),
        ),
      ),
     ); 
   },);

  }
  static Future showAddSkillsDialog({required BuildContext context,required WidgetRef ref,})async{
    final form=FormGroup({
      "skill":FormControl<String>(validators: [Validators.required] )
    });
    final oldSkills=ref.read(userAuthNotifer).currentUser?.employee?.skills??[];
    // final curreantLanuguage=languageList.where((element) => !oldLanguage.contains(element)).toList();
   await showDialog(context: context, builder: (context) {
     return AlertDialog(
      scrollable: true,
      elevation: 10,
      
      // backgroundColor:Theme.of(context).colorScheme.surfaceVariant.withOpacity(.78),
      content: ReactiveForm(
        formGroup: form,
        child: SizedBox(
         
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.h,),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Assets.icons.png.closeDialog.image(),
                ),
              ),
              SizedBox(height: 20.h,),
              
               Consumer(
                 builder:(context, ref, child) {
                  
                   return ref.watch(getSkillsProvider).when(data: (data) {
                    final currentSkill=data.where((element) => !oldSkills.contains(element.name)).toList();
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
              SizedBox(height: 40.h,),
              ReactiveFormConsumer(
                builder:(context, formGroup, child) {
                  return DynamicButton(
                    title: "Save",
                    isDisabled: !form.valid,
                    onPressed:  ()async {
                      final user=ref.read(userAuthNotifer).currentUser;
                      if(user!=null){
                      final skill=form.control("skill").value;
                     await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(employee:user.employee?.copyWith(skills:[...oldSkills,skill] )));
                     if(context.mounted){
                     context.pop();
          
                     }
                     BotToast.showText(text: "Saved");
                     
                    }
                  },);
                }
              ),
              // SizedBox(height:40.h,)
            ],
          ),
        ),
      ),
     ); 
   },);

  }
  
}