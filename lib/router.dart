import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:skill_race/onboarding/presentation/pages/onboarding_page.dart';
import 'package:skill_race/splash.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';
import 'package:skill_race/src/employe/domain/certificate_info.dart';
import 'package:skill_race/src/employe/domain/education.dart';
import 'package:skill_race/src/employe/domain/expertise.dart';
import 'package:skill_race/src/employe/domain/looking_job_info.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_certificate_page.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_education_page.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_expertise_page.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_looking_job_page.dart';
import 'package:skill_race/src/employe/presentation/pages/global_profile_emp.dart';
import 'package:skill_race/src/financial_account/presenation/pages/balance_page.dart';
import 'package:skill_race/src/home/presentation/pages/filter_page.dart';
import 'package:skill_race/src/home/presentation/pages/home_navigation_page.dart';
import 'package:skill_race/src/home/presentation/pages/home_page.dart';
import 'package:skill_race/src/home/presentation/pages/more_page.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
import 'package:skill_race/src/messages/presentation/pages/chats_page.dart';
import 'package:skill_race/src/messages/presentation/pages/messages_page.dart';
import 'package:skill_race/src/officer/presentation/pages/officer_page.dart';
import 'package:skill_race/src/project/presentaion/pages/add_new_project_page.dart';
import 'package:skill_race/src/project/presentaion/pages/singe_project_page.dart';
import 'package:skill_race/src/user/presintation/pages/edit_my_profile_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_page.dart';

import 'package:skill_race/src/video/presentation/pages/realls_page.dart';
import 'package:skill_race/src/archive/presentaion/pages/saved_page.dart';
import 'package:skill_race/src/video/presentation/pages/single_video_page.dart';
import 'package:skill_race/testi_page.dart';
import 'src/hiring/presentation/pages/need_employ_page.dart';

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 10.0),
              end: Offset.zero,
            ).animate(animation),
            child: child),
  );
}

bool isSplashed = false;
bool isBording = false;

final homeKey = GlobalKey<NavigatorState>();
final mainkey = GlobalKey<NavigatorState>();
final routerProvider = StateProvider<GoRouter>((ref) {
// final userState= ref.watch(userAuthNotifer).state;

  return GoRouter(
    navigatorKey: mainkey,
    debugLogDiagnostics: true,

    initialLocation: SplashPage.routePath,
    observers: [BotToastNavigatorObserver()],

    routes: [
      GoRoute(
        path: MessagesPage.routePath,
        parentNavigatorKey: mainkey,
        name: MessagesPage.routeName,
        builder: (context, state) => MessagesPage(chat: state.extra as Chat?),
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: SingleProjectPage.routePath,
        name: SingleProjectPage.routeName,
        builder: (context, state) =>
            SingleProjectPage(projectId: state.extra as String? ?? ""),
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: EditMyProfilePage.routePath,
        name: EditMyProfilePage.routeName,
        builder: (context, state) => const EditMyProfilePage(),
      ),
      GoRoute(
        path: GlobalEmpProfilePage.routePath,
        name: GlobalEmpProfilePage.routeName,
        builder: (context, state) =>
            GlobalEmpProfilePage(userId: state.extra.toString()),
      ),
      GoRoute(
        path: EmpAddLookingForJobPage.routePath,
        name: EmpAddLookingForJobPage.routeName,
        builder: (context, state) => EmpAddLookingForJobPage(
            lookingForAJob: state.extra as LookingForAJob?),
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: EmpAddExpertisePage.routePath,
        name: EmpAddExpertisePage.routeName,
        builder: (context, state) {
          return EmpAddExpertisePage(
            expertise: state.extra as Expertise?,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: EmpAddEducationPage.routePath,
        name: EmpAddEducationPage.routeName,
        builder: (context, state) =>
            EmpAddEducationPage(education: state.extra as Education?),
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: EmpAddCertificatePage.routePath,
        name: EmpAddCertificatePage.routeName,
        builder: (context, state) => EmpAddCertificatePage(
            ceritificateInfo: state.extra as CeritificateInfo?),
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: AddNewProjectPage.routePath,
        name: AddNewProjectPage.routeName,
        builder: (context, state) => const AddNewProjectPage(),
      ),
       GoRoute(
              parentNavigatorKey: mainkey,
              path: BalancePage.routePath,
              name: BalancePage.routeName,
              builder: (context, state) => const BalancePage(),
            ),

      GoRoute(
        path: SingleVideoPage.routePath,
        name: SingleVideoPage.routeName,
        parentNavigatorKey: mainkey,
        builder: (context, state) =>
            SingleVideoPage(url: state.extra.toString()),
        pageBuilder: (context, state) {
          final args = state.extra! as String;
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: SingleVideoPage(url: args),
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: mainkey,
        path: SavedPage.routePath,
        name: SavedPage.routeName,
        builder: (context, state) => const SavedPage(),
      ),
       GoRoute(
              parentNavigatorKey: mainkey,
              path: ChatsPage.routePath,
              name: ChatsPage.routeName,
              builder: (context, state) => const ChatsPage(),
            ),

      ShellRoute(
          navigatorKey: homeKey,
          builder: (context, state, child) => HomePageNavigation(child: child),
          // pageBuilder: (context, state, child) =>   buildPageWithDefaultTransition(context: context, state: state, child: HomePageNavigation(child: child)) ,
          routes: [
            GoRoute(path: OffersPage.routePath,
            name: OffersPage.routeName,
            parentNavigatorKey: homeKey,
            builder: (context, state) =>const OffersPage(),),
            GoRoute(
              path: ReallsPage.routePath,
              parentNavigatorKey: homeKey,
              name: ReallsPage.routeName,
              builder: (context, state) => const ReallsPage(),
            ),
            GoRoute(
              parentNavigatorKey: homeKey,
              path: HomePage.routePath, //name: HomePage.routeName,
              builder: (context, state) => const HomePage(),
            ),
           
           
            GoRoute(
              parentNavigatorKey: homeKey,
              path: ProfilePage.routePath,
              name: ProfilePage.routeName,
              builder: (context, state) => const ProfilePage(),
            ),
            GoRoute(
              parentNavigatorKey: homeKey,
              path: MorePage.routePath,
              name: MorePage.routeName,
              builder: (context, state) => const MorePage(),
            ),
          ]),

      GoRoute(
        path: OnboardingPage.routePath,
        name: OnboardingPage.routeName,
        builder: (context, state) => const OnboardingPage(),
      ),

      GoRoute(
        path: TestPage.routePath,
        name: TestPage.routeName,
        builder: (context, state) => const TestPage(),
      ),

      GoRoute(
        path: AuthFlowPage.routePath,
        name: AuthFlowPage.routeName,
        parentNavigatorKey: mainkey,
        builder: (context, state) => const AuthFlowPage(),
      ),

// SplashPage FilterPage

      GoRoute(
          // parentNavigatorKey: homeKey,
          parentNavigatorKey: mainkey,
          path: FilterPage.routePath, //name: HomePage.routeName,
          builder: (context, state) => const FilterPage()),
      GoRoute(
        path: SplashPage.routePath,
        name: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
          // parentNavigatorKey: homeKey,
          parentNavigatorKey: mainkey,
          path: NeedEmpolyPage.routePath, //name: HomePage.routeName,
          builder: (context, state) => const NeedEmpolyPage()),

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
