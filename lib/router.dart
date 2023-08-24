import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:skill_race/testi_page.dart';

final routerProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(
    initialLocation:TestPage.routePath ,
    observers:[BotToastNavigatorObserver()],
    routes: [
      GoRoute(path: TestPage.routePath,name: TestPage.routName,
      builder: (context, state) =>const TestPage(),)
      
    
  ]);
});
