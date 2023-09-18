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
import 'package:skill_race/src/employe/application/education_form.dart';
import 'package:skill_race/src/employe/application/get_facutily_provider.dart';
import 'package:skill_race/src/employe/domain/education.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
class EmpAddEducationPage extends ConsumerWidget {
  const EmpAddEducationPage({super.key,required this.education});
 static String get  routeName=>"profil-education";
 static String get routePath=>"/$routeName";
 final Education? education;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
     final  form=ref.read(eduicationFormProvider(education: education));

   final user=ref.read(userAuthNotifer).currentUser;
    return WillPopScope(
      onWillPop: ()async {
       form.reset();
       form.dispose();
        return true;
        
      },
      child: Scaffold(
        appBar: appBarComponent(title: "Add Education", context: context,showBack: true),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                children: [
                  SizedBox(height: 24.h,),
                  // DynamicInput(placeholder: "",title: "Certificate Name",control: "name",),

                  DropdownSearchWidget(formControlName: "schoolLevel", placeholder: "",
                  title: "School",
                  item: educationLevels,
                  search: false,
                  ),
                                    SizedBox(height: 16.h,),

                  ref.watch(getFacutilyProvider).when(data: (data) {

return DropdownSearchWidget(formControlName: "faculaty", placeholder: "",
title: "Faculty",
search: false,

item: data.map((e) => e.name).toList());
                    
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

                   },),
                   
                 
                 
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "University",control: "university",),
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "Start Date",control: "startDate",type: Type.date, placeholderIcon: Assets.icons.png.calendar.image(),placeholderIconPosition: IconPosition.end,),
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "End Date",control: "endDate",type: Type.date,placeholderIcon: Assets.icons.png.calendar.image(),placeholderIconPosition: IconPosition.end,),
                  SizedBox(height: 40.h ,),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child)  {
                      return DynamicButton           
                      (
                        isDisabled: !form.valid ,
                        title:education==null? "Save":"Update",
                        onPressed: ()async {
                          if(user!=null){
                           final schoolLevel=form.control("schoolLevel").value;
                           final university=form.control("university").value;

                            final faculaty=form.control("faculaty").value;
                            final startDate=form.control("startDate").value;
                            final endDate=form.control("endDate").value;
    
                          if(education==null){
//                   
                            final certificate=Education(faculaty: faculaty,schoolLevel: schoolLevel,
                            createdAt: DateTime.now(),
                            university: university,endDate: endDate,startDate: startDate);
                            final oldCer=user.employee?.educations??[];
                            await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(employee: user.employee?.copyWith( educations: [...oldCer,certificate])));
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Saved");
                            
                           
    
                          }else{
                          final old=(user.employee?.educations??[]).where((element) => element.createdAt!=education!.createdAt).toList();
                          
                          old.add(education!.copyWith(faculaty: faculaty,schoolLevel: schoolLevel,
                            university: university,endDate: endDate,startDate: startDate));
                            await ref.read(userAuthNotifer.notifier).updateUser(  user.copyWith( employee: user.employee?.copyWith(   educations: old)));
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Updated");
    
                          }}
                          form.reset();
                          form.dispose();
                       
                      },);
                    }
                  )
            
            
            
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}