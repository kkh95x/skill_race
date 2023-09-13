


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/components/employee_auth_component.dart';
import 'package:skill_race/src/auth/presentation/components/account_type_component.dart';
import 'package:skill_race/src/auth/presentation/components/hiring_auth_component.dart';

import 'package:skill_race/src/user/application/user_form.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';

class AuthFlowPage extends ConsumerWidget {
  const AuthFlowPage({super.key});
  static String get routeName=>"auth";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state= ref.watch(userAuthNotifer).state;
            final form =ref.read(userFormProvider());

    return Scaffold(
      
      body:ReactiveForm(formGroup: form,
      
      child:_getStep(state) ,)
      
      
    );
  }
  _getStep(AuthStatus status){
    switch(status){

      case AuthStatus.loading:
        return const CircularProgressIndicator();
      case AuthStatus.unAtuth:
        return const NeedSginUpComponent();
        
      case AuthStatus.auth:
        return const SizedBox();
        
      // case AuthStatus.createAccountByEmail:
      //   return SginUpWithEmailComponent();
        
      // case AuthStatus.confirmEmail:
      //   return ConfirmCodeComponent();
      
      // case AuthStatus.newPasswordEntry:
      //   return EnterNewPasswordComponent();
        
      case AuthStatus.empolyeeEntery:
        return const EmpEntryPageComponent();
      
     
      case AuthStatus.selectType:
       return const AccountTypeComponent();
      case AuthStatus.hiringEntry:
        return const HiringAuthComponent() ;
        
           }
}}