import 'package:flutter/material.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
class MorePage extends ConsumerWidget {
  const MorePage({super.key});
 static String get routeName=>"user-more";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context,WidgetRef ref) {
   final state=  ref.watch(userAuthNotifer).state;
final isAuth=state==AuthStatus.auth;
    
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("more Page soon ...."),
        Visibility(
          visible:isAuth ,
          child: DynamicButton(
            title: "Logout",
            onPressed: () {
              ref.read(userAuthNotifer.notifier).logOut();
            
          },),
        )
   
      ],
    );
  }
}