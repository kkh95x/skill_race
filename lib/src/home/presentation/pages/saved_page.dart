import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';

class SavedPage extends ConsumerWidget {
  const SavedPage({super.key});
 static String get routeName=>"user-saved";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final authState=ref.watch(userAuthNotifer).state;
    final  isAuth=authState==AuthStatus.auth;

    if(!isAuth){
      return const NeedSginUpComponent();
    }
    return const Center(
      child: Text("Saved Page  soon ...."),
    );
  }
}