

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/certificate_form.dart';
import 'package:skill_race/src/employe/domain/certificate_info.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';


class EmpAddCertificatePage extends ConsumerWidget {
  const EmpAddCertificatePage({super.key,required this.ceritificateInfo});
  static String get routeName=>"profile-cetificate";
  static String get routePath=>"/$routeName";
  final CeritificateInfo? ceritificateInfo;
 
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final  form=ref.read(ceritificateFormProvider(ceritificateInfo: ceritificateInfo));

   final user=ref.read(userAuthNotifer).currentUser;
    return WillPopScope(
      onWillPop: ()async {
       form.reset();
       form.dispose();
        return true;
        
      },
      child: Scaffold(
        appBar: appBarComponent(title: "Add Certificate", context: context,showBack: true),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                children: [
                  SizedBox(height: 24.h,),
                  DynamicInput(placeholder: "",title: "Certificate Name",control: "name",),
                  SizedBox(height: 16.h,),
            
                  DynamicInput(placeholder: "",title: "Certificate From",control: "from",),
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
                        title:ceritificateInfo==null? "Save":"Update",
                        onPressed: ()async {
                          if(user!=null){
                           final name=form.control("name").value;
                            final from=form.control("from").value;
                            final startDate=form.control("startDate").value;
                            final endDate=form.control("endDate").value;
    
                          if(ceritificateInfo==null){
                            final certificate=CeritificateInfo(name: name, createdAt: DateTime.now(),
                            certificateFrom: from,endDate: endDate,startDate: startDate);
                            final oldCer=user.employee?.ceritificates??[];
                            await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(employee: user.employee?.copyWith(  ceritificates: [...oldCer,certificate])));
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Saved");
                            
                           
    
                          }else{
                          final old=(user.employee?.ceritificates??[]).where((element) => element.createdAt!=ceritificateInfo!.createdAt).toList();
                          
                          old.add(ceritificateInfo!.copyWith(name: name,
                            certificateFrom: from,endDate: endDate,startDate: startDate));
                            await ref.read(userAuthNotifer.notifier).updateUser(  user.copyWith( employee: user.employee?.copyWith(   ceritificates: old)));
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Updated");
    
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