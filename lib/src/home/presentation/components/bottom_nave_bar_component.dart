import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/home/presentation/pages/home_page.dart';
import 'package:skill_race/src/home/presentation/pages/messages_page.dart';
import 'package:skill_race/src/home/presentation/pages/more_page.dart';
import 'package:skill_race/src/home/presentation/pages/profile_page.dart';
import 'package:skill_race/src/home/presentation/pages/saved_page.dart';

final index=StateProvider((ref) => 0);
List<String> routesHomePage=[
  HomePage.routePath,
  SavedPage.routePath,
  MessagesPage.routePath,
  ProfilePage.routePath,
  MorePage.routePath
];
class BottomNaveBarComponent extends ConsumerWidget {
  const BottomNaveBarComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      // selectedIconTheme:IconThemeData(color: Theme.of(context).primaryColor),
      showSelectedLabels: true,
      // showUnselectedLabels: true,
      elevation: 0.0,
    
      // fixedColor: Colors.transparent,primaryContainer
    // unselectedLabelStyle:TextStyle(color: Color(0xff767676)),
    // unselectedIconTheme: IconThemeData(color: Theme.of(context).colorScheme.primaryContainer),
    unselectedItemColor:Theme.of(context).colorScheme.primaryContainer ,
    
    
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        
        context.go(routesHomePage[value]);
    
                ref.read(index.notifier).state=value;
    
      },
      currentIndex: ref.watch(index),
     
      items: [
        BottomNavigationBarItem(
    
            label: 'Home',
            
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.homeIcon.home.svg(),
             
              ],
            ),
    
            activeIcon: Assets.homeIcon.home.svg(colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),   
    )
           
          ),
           BottomNavigationBarItem(
            label: 'Saved',
            icon:   Assets.homeIcon.saved.svg(),
                        activeIcon: Assets.homeIcon.saved.svg(colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)),  
            
           
          ),
           BottomNavigationBarItem(
            
            label: 'Messages',
            icon: Assets.homeIcon.massenger.svg(),
                                    activeIcon: Assets.homeIcon.massenger.svg(colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)),  
    
           
          ),
           BottomNavigationBarItem(
            label: 'Profile',
            icon:  Assets.homeIcon.profile.svg(),
                                    activeIcon: Assets.homeIcon.profile.svg(colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)),  
    
           
          ),
         BottomNavigationBarItem(
            label: 'More',
            icon:    Assets.homeIcon.more.svg(),
                                    activeIcon: Assets.homeIcon.more.svg(colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn)),  
    
           
          ),
     
        
         
     
    
      ],
    );
  }
}