import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:skill_race/core/application/sharef_pref_service.dart';
import 'package:skill_race/firebase_options.dart';
import 'package:skill_race/router.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';
import 'package:skill_race/theme.dart';

Future<void> main()async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AllCountres.init();
  await SharefPrefranceService.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final botToastBuilder = BotToastInit();    
    return ScreenUtilInit(
      designSize: const Size(375,812 ),//form figma pages desgin
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (context , child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          builder: (context, child) {
              child = botToastBuilder(context, child);
              return child;
            },
             theme: ThemeData(
          fontFamily: 'Poppins',
          useMaterial3: true,
          colorScheme: lightColorScheme,
 scaffoldBackgroundColor: Colors.white,

          textTheme: TextTheme(
            
              headlineSmall:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              displayLarge:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              displaySmall: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              titleLarge: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontWeight: FontWeight.w400,
              ),
              titleSmall:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              labelSmall: TextStyle(
                fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.onTertiaryContainer,
                  fontWeight: FontWeight.w400),
              titleMedium: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w400),
              labelMedium: TextStyle(
                  color: Theme.of(context).colorScheme.shadow,
                  fontWeight: FontWeight.w400),
            )
        ),
        darkTheme: ThemeData(
            fontFamily: 'Poppins',
            useMaterial3: true,
            colorScheme: darkColorScheme,
            textTheme: TextTheme(
              headlineSmall:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              displayLarge:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              displaySmall: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              titleLarge: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontWeight: FontWeight.w400,
              ),
              titleSmall:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
              labelSmall: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w400),
              titleMedium: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w400),
              labelMedium: TextStyle(
                  color: Theme.of(context).colorScheme.shadow,
                  fontWeight: FontWeight.w400),
            )),
       
       
        themeMode: ThemeMode.light,
        );
      }
    );
  }
}
