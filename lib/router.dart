import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:skill_race/onboarding/presentation/pages/onboarding_page.dart';
import 'package:skill_race/splash.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';
import 'package:skill_race/src/home/presentation/pages/home_page.dart';
import 'package:skill_race/testi_page.dart';



final _key=GlobalKey<NavigatorState>();
final routerProvider = StateProvider<GoRouter>((ref) {
 final authState=ref.watch(userAuthNotifer).state;
 final authNotifer=ref.read(userAuthNotifer.notifier);

  return GoRouter(
        navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation:SplashPage.routePath ,
    observers:[BotToastNavigatorObserver()],

    routes: [
        
      GoRoute(path: OnboardingPage.routePath,name: OnboardingPage.routeName,
      builder: (context, state) =>const OnboardingPage(),),
      
      GoRoute(path: TestPage.routePath,name: TestPage.routeName,
      builder: (context, state) =>const TestPage(),),

      GoRoute(path: AuthFlowPage.routePath,name: AuthFlowPage.routeName,
      builder: (context, state) =>const AuthFlowPage(),),
      
      GoRoute(path: HomePage.routePath,name: HomePage.routeName,
      builder: (context, state) =>const HomePage(),),
// SplashPage
      
     GoRoute(path: SplashPage.routePath,name: SplashPage.routeName,
      builder: (context, state) =>const SplashPage(),),
  ],
  redirect: (context, state) {

    print('--->r ${state.matchedLocation} - auth $authState');
   final isBoarding=state.matchedLocation==OnboardingPage.routePath;
   if(isBoarding){
    return null;
   }
   final isAuth=authState==AuthStatus.auth;

   final isSplash=state.matchedLocation==SplashPage.routePath;
   if(isSplash){
    return !isAuth?null:HomePage.routePath;
   }
   final isLoading=authState==AuthStatus.loading;
   if(isLoading){
return null;
   }

   return isAuth?HomePage.routePath:AuthFlowPage.routePath;
  },);
});
