import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class InterestsPageComponent extends ConsumerWidget {
  const InterestsPageComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
        final form =ref.read(userFormProvider());

    return  AuthPageTemplateComponent(         
        title: "Interests",

        addLogo: false,
      child:ReactiveForm(
        formGroup: form,
        child: ReactiveFormConsumer(
                        builder:(context, formGroup, child) {
                          List<String> selected=formGroup.control("Interests").value??[];
                          
            return Column(
              children: [
                Column(
                  children: [ 
                
                     SizedBox(
                      height: 600.h,
                       child: ListView.builder(
                          // physics:const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: interestsList.length,
                          itemBuilder: (context, index)  {
                            return Container(
                                margin: EdgeInsets.only(top: 16.h),
                                padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
                               height: 79.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiaryContainer,
                          borderRadius: BorderRadius.circular(20.r),
                          
                        ),child: ListTile(
                              title: Text(interestsList[index]),
                              trailing: Checkbox(value: selected.contains(interestsList[index]), onChanged: (value) {

                                if(index==0){
                                  formGroup.control("Interests").value=[...interestsList];
                                }
                                else
                                if(! selected.contains(interestsList[index])){
                                  selected.add(interestsList[index]);
                                formGroup.control("Interests").value=[...selected];
                                     
                                     
                                }else{
                                selected.remove(interestsList[index]);
                                formGroup.control("Interests").value=[...selected];}
                              },),));
                          }
                        ),
                     ),
                             
                      
                      
                      
                      ]),
                
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: DynamicButton(
                                title: "Sgin in",
                                onPressed: () {
                                  if(( (form.control("Interests").value as List<String>?) ??[]).isEmpty){
                                    BotToast.showText(text: "You Must Have Select one Interests or more",duration:const Duration(seconds: 5),clickClose: true);
                                  }else{
                                    ref.read(userAuthNotifer.notifier).addInterstsToUserAndCreateIt(form).then((value) {
                                      context.pop();
                                    });
                                  }
                                
                              },),
                        )
              ],
            );
          }
        ),
      ),);
  }
}