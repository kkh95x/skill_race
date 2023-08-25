import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:skill_race/onboarding/presentation/pages/onboarding_page.dart';
import 'package:skill_race/testi_page.dart';

final routerProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(
    initialLocation:OnboardingPage.routePath ,
    observers:[BotToastNavigatorObserver()],
    routes: [

      GoRoute(path: OnboardingPage.routePath,name: OnboardingPage.routeName,
      builder: (context, state) =>const OnboardingPage(),),
      
      GoRoute(path: TestPage.routePath,name: TestPage.routeName,
      builder: (context, state) =>const TestPage(),)
      
    
  ]);
});
