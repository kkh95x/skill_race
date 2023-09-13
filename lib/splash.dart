import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/router.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import './src/home/presentation/pages/home_page.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});
  static String get routeName=>"splash";
  static String get routePath=>"/$routeName"; 

    
    
 

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_){
     final state =ref.watch(userAuthNotifer).state;

Future.delayed(const Duration(seconds: 2),() {
     if(state!=AuthStatus.loading){
      if(context.mounted){
        context.go(HomePage.routePath);
      }
     }
    },);
});

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Assets.icons.png.logo.image(),));
  }
}