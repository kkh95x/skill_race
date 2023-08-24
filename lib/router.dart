import 'package:riverpod/riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';

final routerProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(
    observers:[BotToastNavigatorObserver()],
    routes: [
      
    
  ]);
});
