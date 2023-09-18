import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/expertise_form.dart';
import 'package:skill_race/src/employe/domain/expertise.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';

class EmpAddExpertisePage extends ConsumerWidget {
  const EmpAddExpertisePage({super.key,required this.expertise});
  static String get routeName=>"add-expertise";
  static String get routePath=>"/$routeName";
  final Expertise? expertise; 
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final  form=ref.read(expertiseFormProvider(expertise: expertise));

   final user=ref.read(userAuthNotifer).currentUser;
    return WillPopScope(
      onWillPop: ()async {
     form.reset();
        return true;
        
      },
      child: Scaffold(
        appBar: appBarComponent(title: "Add Expertise", context: context,showBack: true,onBack: () {
            form.reset();
        },),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                children: [
                  SizedBox(height: 24.h,),
                  const DropdownSearchWidget(placeholder: "",title: "Job Type",
                  search: false,
                  item: jobType,
                  formControlName: "workType",),
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "Company Name",control: "companyName",),
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "Start Date",control: "startDate",type: Type.date,placeholderIcon: Assets.icons.png.calendar.image(),placeholderIconPosition: IconPosition.end,),
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "End Date",control: "endDate",type: Type.date,placeholderIcon: Assets.icons.png.calendar.image(),placeholderIconPosition: IconPosition.end,),
                  SizedBox(height: 40.h,),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child)  {
                      return DynamicButton           
                      (
                        isDisabled: !form.valid ,
                        title:expertise==null? "Save":"Update",
                        onPressed: ()async {
                          if(user!=null){
                           final workType=form.control("workType").value;
                            final companyName=form.control("companyName").value;
                            final startDate=form.control("startDate").value;
                            final endDate=form.control("endDate").value;
    
                          if(expertise==null){
                            final certificate=Expertise(workType: workType, createdAt: DateTime.now(),
                            companyName: companyName,endDate: endDate,startDate: startDate);
                            final oldCer=user.employee?.expertises??[];
                            await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(employee: user.employee?.copyWith(  expertises: [...oldCer,certificate])));
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Saved");
                                        form.reset();

                           
    
                          }else{
                          final old=(user.employee?.expertises??[]).where((element) => element.createdAt!=expertise!.createdAt).toList();
                          
                          old.add(expertise!.copyWith(workType: workType,
                            companyName: companyName,endDate: endDate,startDate: startDate));
                            await ref.read(userAuthNotifer.notifier).updateUser(  user.copyWith( employee: user.employee?.copyWith(   expertises: old)));
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Updated");
                form.reset();

                          }}
                       
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