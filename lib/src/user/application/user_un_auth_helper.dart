

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import '../presintation/components/login_buttons_components.dart';
final userUnAuthHelper=FutureProvider.autoDispose.family<void,BuildContext>((ref,context) {

  final userAuth=ref.read(userAuthNotifer);
  if(userAuth.state!=AuthStatus.auth){

if(context.mounted){
 showBottomSheet(context: context, builder: (context) {
      return const LoginButtonsComponent();
    },);
    

  }
}


});