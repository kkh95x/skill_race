import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName=>"user-home";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user=ref.read(userAuthNotifer).currentUser;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome ${user?.fullname??""}"),
          const  Text("home Page",style: TextStyle(color: Colors.black),),
            DynamicButton
          
            (
              
              title: "log out",
              onPressed: () async{
               await ref.read(userAuthNotifer.notifier).logOut();
              
            },)
          ],
        ),
      ),
    );
  }
}