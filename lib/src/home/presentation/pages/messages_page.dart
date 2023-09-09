import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';

class MessagesPage extends ConsumerWidget {
  const MessagesPage({super.key});
 static String get routeName=>"user-messages";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context,WidgetRef ref) {
     final authState=ref.watch(userAuthNotifer).state;
    final  isAuth=authState==AuthStatus.auth;

    if(!isAuth){
      return const NeedSginUpComponent();
    }
    return const Center(
      child: Text("messages Page  soon ...."),
    );
  }
}