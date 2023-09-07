import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/user/presintation/components/header_profile_component.dart';
import 'package:skill_race/src/user/presintation/components/tabs_buttons_component.dart';
import 'package:skill_race/src/user/presintation/pages/profile_about_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_dashboard_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_photo_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_videos_page.dart';
final profilePageIndex=StateProvider<int>((ref) => 0);
const profilePagesTitle=["Videos","Photos","About","Dashboard"];
const profilePages=[ProfileVideosPage(),ProfilePhotosPage(),ProfileAboutePage(),ProfileDashboardPage()];

class ProfileComponent extends ConsumerWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef  ref) {
    final pageController=PageController();
  
 
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16.w,),
      child: Column(
        children: [
          appBarComponent(title: "Profile", context: context),
          const HeaderProfileComponent(
            picUrl:  "https://images.nightcafe.studio/jobs/1dg6rpsglt7JUxmlLlau/1dg6rpsglt7JUxmlLlau--1--gck8s.jpg?tr=w-1600,c-at_max",
            countryName: "Egypt",
            specialization: "UI/UX Designer",
            state: "Available now",
            username: "Ahmed Hussien",
    
            ),
            SizedBox(height: 16.h,),
            TabButtonComponent(currentItems:profilePagesTitle[ref.watch(profilePageIndex)], onSelectes: (selectdItem) {
        
              ref.read(profilePageIndex.notifier).state=profilePagesTitle.indexOf(selectdItem);
              pageController.animateToPage(ref.read(profilePageIndex.notifier).state, duration: const Duration(milliseconds: 200), curve: Curves.linear);
              
              
            }, tabs:profilePagesTitle ),

            Expanded(
              
              child: PageView.builder(
                onPageChanged: (value) {
                   ref.read(profilePageIndex.notifier).state=value;
                },
                controller: pageController,
                itemCount: profilePages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return profilePages[index];
                
              },),
            )
          
    
        ],
      ),
    );
  }
}