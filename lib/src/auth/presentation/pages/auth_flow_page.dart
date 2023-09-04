

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/components/Interests_auth_component.dart';
import 'package:skill_race/src/auth/presentation/components/confirm_code_component.dart';
import 'package:skill_race/src/auth/presentation/components/enter_password_new_user.dart';
import 'package:skill_race/src/auth/presentation/components/login_component.dart';
import 'package:skill_race/src/auth/presentation/components/sgin_up_with_email_component.dart';

class AuthFlowPage extends ConsumerWidget {
  const AuthFlowPage({super.key});
  static String get routeName=>"auth";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state= ref.watch(userAuthNotifer).state;
    return Scaffold(
      
      body:_getStep(state)
    );
  }
  _getStep(AuthStatus status){
    switch(status){

      case AuthStatus.loading:
        return CircularProgressIndicator();
      case AuthStatus.unAtuth:
        return LoginComponent();
        
      case AuthStatus.auth:
        return SizedBox();
        
      case AuthStatus.createAccountByEmail:
        return SginUpWithEmailComponent();
        
      case AuthStatus.confirmEmail:
        return ConfirmCodeComponent();
      
      case AuthStatus.newPasswordEntry:
        return EnterNewPasswordComponent();
        
      case AuthStatus.iterestsEntery:
        return InterestsPageComponent();
      
     
    }
}}