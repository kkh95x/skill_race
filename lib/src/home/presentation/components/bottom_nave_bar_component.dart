import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/financial_account/presenation/pages/balance_page.dart';
import 'package:skill_race/src/home/presentation/pages/home_page.dart';
import 'package:skill_race/src/home/presentation/pages/more_page.dart';
import 'package:skill_race/src/messages/presentation/pages/chats_page.dart';
import 'package:skill_race/src/officer/presentation/pages/officer_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_page.dart';
import 'package:skill_race/src/archive/presentaion/pages/saved_page.dart';
import 'package:skill_race/src/video/presentation/pages/realls_page.dart';

final bottomNavindex = StateProvider((ref) => 0);
List<String> routesHomePage = [
  HomePage.routePath,
  ReallsPage.routePath,
  OffersPage.routePath,
  // ChatsPage.routePath,
  ProfilePage.routePath,
  MorePage.routePath
];

class PageRouteData {
  String path;
  String? extra;
  PageRouteData({required this.extra, required this.path});
}

class BottomNaveBarComponent extends ConsumerWidget {
  const BottomNaveBarComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
          // gradient: LinearGradient(colors: [Colors.black,Colors.transparent],begin: Alignment.bottomCenter,end: Alignment.topCenter)
          ),
      child: BottomNavigationBar(
        // backgroundColor: Colors.black,
        // selectedIconTheme:IconThemeData(color: Theme.of(context).primaryColor),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,

        // fixedColor: Colors.transparent,primaryContainer
        // unselectedLabelStyle:TextStyle(color: Theme.of(context).colorScheme.primaryContainer ),
        unselectedIconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.primaryContainer),
        unselectedItemColor: Theme.of(context).colorScheme.primaryContainer,
        // Theme.of(context).colorScheme.primaryContainer ,
        // unselectedIconTheme: IconThemeData(color: Colors.white),

        type: BottomNavigationBarType.fixed,
      
        onTap: (value) {
          context.go(routesHomePage[value]);
          ref.read(bottomNavindex.notifier).state = value;
        },
        currentIndex: ref.watch(bottomNavindex),

        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.homeIcon.home.svg(),
                ],
              ),
              activeIcon: Assets.homeIcon.home.svg(
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              )),
          BottomNavigationBarItem(
            label: 'Reels',
            icon: Assets.homeIcon.realls.svg(
                width: 19.r,
                height: 20.r,
                color: Theme.of(context).colorScheme.primaryContainer),
            activeIcon: Assets.homeIcon.realls.svg(
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
                width: 19.r,
                height: 20.r),
          ),
          BottomNavigationBarItem(
            label: 'Finance',
            icon: Assets.homeIcon.offer.svg(
                width: 35.r,
                height: 35.r,
                color: Theme.of(context).colorScheme.primaryContainer),
            activeIcon: Assets.homeIcon.offer.svg(
                 width: 35.r,
                height: 35.r,
                colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.primary,
              BlendMode.srcIn,
            )),
          ),
          // BottomNavigationBarItem(
          //   label: 'Messages',
          //   icon: Assets.homeIcon.massenger.svg(),
          //   activeIcon: Assets.homeIcon.massenger.svg(
          //       colorFilter: ColorFilter.mode(
          //           Theme.of(context).colorScheme.primary, BlendMode.srcIn)),
          // ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Assets.homeIcon.profile.svg(),
            activeIcon: Assets.homeIcon.profile.svg(
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn)),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Assets.homeIcon.more.svg(),
            activeIcon: Assets.homeIcon.more.svg(
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn)),
          ),
        ],
      ),
    );
  }
}
