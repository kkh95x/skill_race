

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/user/application/user_form.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class AuthFlowPage extends ConsumerWidget {
  const AuthFlowPage({super.key});
  static String get routeName=>"auth";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final form =ref.read(userFormProvider());
    return Scaffold(
      
      body: AuthPageTemplateComponent( 
        
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

                Text("or Login with"),
           
               Expanded(
                  child: Divider(
                    height: 1,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    
                  ),
                ),
    

              ],),
                          SignInButton(
  Buttons.Facebook,
  onPressed: () {},
  mini: true,
  shape:CircleBorder()
),
                   SignInButton(
  Buttons.Twitter,
  onPressed: () {},
  mini: true,
  shape:CircleBorder()
),
                   SignInButton(
  Buttons.Google,
  onPressed: () {},
  
  shape:CircleBorder()
)

            
      
          ],
        ),
      ),)
    );
  }
}