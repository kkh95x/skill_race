import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/home/presentation/components/feeds_component.dart';
import 'package:skill_race/src/home/presentation/components/profile_component.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName=>"user-home";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: 
      PageView.builder(itemBuilder:  (context, index) {
        if(index==0){
          return FeedsComponent();
        }else{
          return ProfileComponent();
        }
      },
      itemCount: 2,)
      
    );
  }
}