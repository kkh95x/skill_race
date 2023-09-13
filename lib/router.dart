import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:skill_race/onboarding/presentation/pages/onboarding_page.dart';
import 'package:skill_race/splash.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';
import 'package:skill_race/src/home/presentation/pages/filter_page.dart';
import 'package:skill_race/src/home/presentation/pages/home_navigation_page.dart';
import 'package:skill_race/src/home/presentation/pages/home_page.dart';
import 'package:skill_race/src/home/presentation/pages/messages_page.dart';
import 'package:skill_race/src/home/presentation/pages/more_page.dart';
import 'package:skill_race/src/project/presentaion/pages/add_new_project_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_page.dart';
import 'package:skill_race/src/video/presentation/pages/realls_page.dart';
import 'package:skill_race/src/home/presentation/pages/saved_page.dart';
import 'package:skill_race/src/video/presentation/pages/single_video_page.dart';
import 'package:skill_race/testi_page.dart';
import './src/home/presentation/pages/need_employ_page.dart';
CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context, 
  required GoRouterState state, 
  required Widget child,
}) {
  return 
  
  CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) => 
      SlideTransition(position: Tween<Offset>(
        begin: const Offset(0.0, 10.0),
        end: Offset.zero,
      ).animate(animation), child: child),
  );
}
bool isSplashed=false;
bool isBording=false;

final homeKey=GlobalKey<NavigatorState>();
final mainkey=GlobalKey<NavigatorState>();
final routerProvider = StateProvider<GoRouter>((ref) {
// final userState= ref.watch(userAuthNotifer).state;

  return GoRouter(
        navigatorKey: mainkey,
    debugLogDiagnostics: true,
    
    initialLocation:SplashPage.routePath ,
    observers:[BotToastNavigatorObserver()],

    routes: [
      
      GoRoute(
        parentNavigatorKey: mainkey,
        path: AddNewProjectPage.routePath,name: AddNewProjectPage.routeName,
      builder: (context, state) =>const AddNewProjectPage(),
      ),

      GoRoute(path: SingleVideoPage.routePath,
      name: SingleVideoPage.routeName,
      parentNavigatorKey: mainkey,
      builder: (context, state) => SingleVideoPage(url: state.extra.toString()),
       pageBuilder: (context, state) {
          final args = state.extra! as String;
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: SingleVideoPage(url: args),
          );
        },
      
      ),

     
      ShellRoute(
        navigatorKey: homeKey,


        builder: (context, state, child) =>  HomePageNavigation(child: child),
      // pageBuilder: (context, state, child) =>   buildPageWithDefaultTransition(context: context, state: state, child: HomePageNavigation(child: child)) ,
        routes: [
         GoRoute(        
        path: ReallsPage.routePath,
        parentNavigatorKey: homeKey,
        name: ReallsPage.routeName,
      builder: (context, state) =>const ReallsPage(),),
      GoRoute(
        parentNavigatorKey: homeKey,
        path: HomePage.routePath,//name: HomePage.routeName,
      builder: (context, state) =>const HomePage(),),
        GoRoute(
                  parentNavigatorKey: homeKey,

          path: SavedPage.routePath,name: SavedPage.routeName,
      builder: (context, state) =>const SavedPage(),),
        GoRoute(
                  parentNavigatorKey: homeKey,

          path: MessagesPage.routePath,name: MessagesPage.routeName,
      builder: (context, state) =>const MessagesPage(),),
        GoRoute(
                  parentNavigatorKey: homeKey,

          path: ProfilePage.routePath,name: ProfilePage.routeName,
      builder: (context, state) =>const ProfilePage(),),
        GoRoute(
                  parentNavigatorKey: homeKey,

          path: MorePage.routePath,name: MorePage.routeName,
      builder: (context, state) =>const MorePage(),),
      ]),


      GoRoute(
        
        path: OnboardingPage.routePath,name: OnboardingPage.routeName,
      builder: (context, state) =>const OnboardingPage(),),
      
      GoRoute(path: TestPage.routePath,name: TestPage.routeName,
      builder: (context, state) =>const TestPage(),),

      GoRoute(path: AuthFlowPage.routePath,name: AuthFlowPage.routeName,
      parentNavigatorKey: mainkey,
      builder: (context, state) =>const AuthFlowPage(),),
      
      
// SplashPage FilterPage
      
      GoRoute(
        // parentNavigatorKey: homeKey,
        parentNavigatorKey: mainkey,
        path: FilterPage.routePath,//name: HomePage.routeName,
      builder: (context, state) =>  const FilterPage()),
     GoRoute(path: SplashPage.routePath,name: SplashPage.routeName,
      builder: (context, state) =>const SplashPage(),),
 GoRoute(
        // parentNavigatorKey: homeKey,
        parentNavigatorKey: mainkey,
        path: NeedEmpolyPage.routePath,//name: HomePage.routeName,
      builder: (context, state) =>  const NeedEmpolyPage()),
    

    
      //  GoRoute(
      //   parentNavigatorKey: homeKey,
      //   path: HomePage.routePath,//name: HomePage.routeName,
      // builder: (context, state) =>  const HomePageNavigation(child: HomePage(),)),
  ],
  // redirect: (context, state) {

  //   if(userState==AuthStatus.loading){
  //     return SplashPage.routePath;
  //   }else{
  //     return null;
  //   }
  // }
//     // if(!isSplashed){
//     //   return null;
//     // }
//     // else if(isSplashed && !isBording){
//     //   return null;

//     // }else{

// // final isSplash =state.matchedLocation==SplashPage.routePath;
// // final isLoging=state.matchedLocation==AuthFlowPage.routePath;
// // final isAuth=authState==AuthStatus.auth;
// // if(isSplash){
// //   return AuthFlowPage.routePath;
// // }
// // if(isLoging){
// //   return isAuth?HomePage.routePath:AuthFlowPage.routePath;
// // }

// // return isAuth?null:HomePage.routePath;


//     }
    


   
  // },
  
  );
});