import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:skill_race/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final botToastBuilder = BotToastInit();
    return ScreenUtilInit(
      designSize: const Size(1080,2340 ),//note 8 pro screen width and hight
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp.router(
          routerConfig: router,
          builder: (context, child) {
              child = botToastBuilder(context, child);
              return child;
            },
        );
      }
    );
  }
}
