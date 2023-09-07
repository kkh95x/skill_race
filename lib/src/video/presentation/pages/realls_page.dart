


import 'package:flutter/material.dart';
import 'package:skill_race/src/video/presentation/components/feeds_component.dart';
import 'package:skill_race/src/user/presintation/components/profile_component.dart';

class ReallsPage extends StatelessWidget {
  const ReallsPage({super.key ,});
  static String get routeName=>"realls";
  static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: 
      PageView.builder(itemBuilder:  (context, index) {
        if(index==0){
          return const FeedsComponent();
        }else{
          return const SizedBox();
        }
      },
      itemCount: 1,)
      
    );
  }
}