import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/onboarding/presentation/pages/onboarding_page.dart';
import 'package:skill_race/router.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String get routeName=>"splash";
  static String get routePath=>"/$routeName"; 

    
    
 

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){

Future.delayed(const Duration(seconds: 3),() {
      SharedPreferences.getInstance().then((shared){
        print("isB: ${shared.getBool("isB")}");
     if( shared.getBool("isB")==null){
      isSplashed=true;
      if(context.mounted){
      context.go(OnboardingPage.routePath);}
     }else{
      isSplashed=true;
      isBording=true;
      if(context.mounted){
      context.go(AuthFlowPage.routePath);}
      
     }
    });
    },);
});

    return Scaffold(body: Center(child: Assets.icons.png.logo.image(),));
  }
}