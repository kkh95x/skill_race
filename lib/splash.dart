import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/onboarding/presentation/pages/onboarding_page.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static String get routeName=>"splash";
  static String get routePath=>"/$routeName"; 

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  

@override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {
      SharedPreferences.getInstance().then((shared){
        print("isB: ${shared.getBool("isB")}");
     if( shared.getBool("isB")==null){
      if(mounted){
      context.push(OnboardingPage.routePath);}
     }else{
      if(mounted){
      context.push(AuthFlowPage.routePath);}
      
     }
    });
    },);
    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(body: Center(child: Assets.icons.png.logo.image(),));
  }
}