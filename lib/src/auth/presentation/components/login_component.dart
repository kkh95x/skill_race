import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class LoginComponent extends ConsumerWidget {
  const LoginComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
        final form =ref.read(userFormProvider());

    return  AuthPageTemplateComponent(         
        title: "Sgin in",
      child: ReactiveForm(
        formGroup: form.control("login")as FormGroup,
        child: Column(
          children: [
            DynamicInput(
              title: "E-mail",
              control: "username",
              placeholder: "Email"),
              SizedBox(height: 10.h,),
               DynamicInput(
                title: "Password",
              control: "password",
              placeholder: "passwrd"),
              SizedBox(height: 59.h,),

              ReactiveFormConsumer(
                builder:(context, formGroup, child) {
                  return DynamicButton(
                    title: "Sgin in",
                    isDisabled: !formGroup.valid,
                    onPressed: () {
                    
                  },);
                }
              ),
              SizedBox(height: 42.h,),
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Expanded(
                  child: Divider(
                    height: 1,
                    color: Theme.of(context).colorScheme.primaryContainer,

                  ),
                ),

                const Text("or Login with"),
           
               Expanded(
                  child: Divider(
                    height: 1,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    
                  ),
                ),
    

              ],),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: ()async {
                   await ref.read(userAuthNotifer.notifier).sginInWithGoogle();
                  }, icon:   Logo(Logos.google),),
                    IconButton(onPressed:() {
                    
                  }, icon:   Logo(Logos.facebook_logo),),
                    IconButton(onPressed:()async {
                  //  await ref.read(userAuthNotifer.notifier).sginInWithFacebook();
                  }, icon:   Logo(Logos.twitter,colorFilter: const ColorFilter.linearToSrgbGamma(),),),
                

                ],
              ),
              SizedBox(height: 60.h,),

              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account?"),
                      TextButton(onPressed: () {
                        ref.read(userAuthNotifer.notifier).changeState(AuthStatus.createAccountByEmail);
                      }, child: const Text("Sign up"))
              
                    ],
                  )
      
          ],
        ),
      ),);
  }
}