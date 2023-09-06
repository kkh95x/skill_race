import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/router.dart';
import './src/home/presentation/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String get routeName=>"splash";
  static String get routePath=>"/$routeName"; 

    
    
 

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){

Future.delayed(const Duration(seconds: 2),() {
      SharedPreferences.getInstance().then((shared){
        // print("isB: ${shared.getBool("isB")}");
    //  if( shared.getBool("isB")==null){
    //   isSplashed=true;
    //   if(context.mounted){
    //   context.go(OnboardingPage.routePath);}
    //  }else{
      isSplashed=true;
      isBording=true;
      if(context.mounted){
      context.go(HomePage.routePath);}
      
    //  }
    });
    },);
});

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Assets.icons.png.logo.image(),));
  }
}