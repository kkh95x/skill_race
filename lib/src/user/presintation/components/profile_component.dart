import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/presentation/pages/profile_emp_about_page.dart';
import 'package:skill_race/src/employe/presentation/pages/profile_emp_dashboard_page.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:skill_race/src/user/presintation/components/header_profile_component.dart';
import 'package:skill_race/src/employe/presentation/pages/reviews_page.dart';
import 'package:skill_race/src/user/presintation/components/tabs_buttons_component.dart';

import 'package:skill_race/src/hiring/presentation/pages/profile_hiring_aboute_page.dart';
import 'package:skill_race/src/hiring/presentation/pages/profile_hiring_dashboard_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_photo_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_videos_page.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

const _profilePagesEmployeedTitle = [
  "Videos",
  "Photos",
  "About",
  "Dashboard",
  "Reviews"
];
const _profilePagesHiringTitle = ["About", "Dashboard"];
const _profileEmployeedPages = [
  ProfileVideosPage(),
  ProfilePhotosPage(),
  ProfileEmpAboutePage(),
  ProfileEmpDashboardPage(),
  ReviewsComponent()
];
const _profileHiringPages = [
  ProfileHiringAboutePage(),
  ProfileHiringDashboardPage()
];

class ProfileComponent extends ConsumerWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final user = ref.read(userAuthNotifer).currentUser;
    final isEmpoloyeed = user?.accountType == AccountType.employe;
    final pages = isEmpoloyeed ? _profileEmployeedPages : _profileHiringPages;
    final tabs =
        isEmpoloyeed ? _profilePagesEmployeedTitle : _profilePagesHiringTitle;
    return Column(
      children: [
        appBarComponent(title: "Profile", context: context),
        HeaderProfileComponent(
          picUrl: user?.imgUrl ??
              "https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465",
          countryName: user?.country ?? "Country",
          specialization: user?.accountType == AccountType.hiring
              ? "Hiring"
              : user?.employee?.specialization ?? '-',
          state: "Available now",
          username: user?.fullname ?? "-",
        ),
        SizedBox(
          height: 16.h,
        ),

        Expanded(
          child: ContainedTabBarView(
              tabBarProperties: TabBarProperties(

                  unselectedLabelColor: Theme.of(context).colorScheme.primaryContainer,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                
                  labelColor: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  height: 40.h,
                  indicator: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.primary
                    ]),
                  )),
              onChange: (p0) {},
              callOnChangeWhileIndexIsChanging: true,
              tabs: [
                for (int i = 0; i < pages.length; i++)
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    height: 37.h,
                    child: AutoSizeText(
                      tabs[i],
                      maxLines: 1,
                      minFontSize: 8.sp,
                      stepGranularity: 1.sp,
                      maxFontSize: 12.sp,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
              ],
              views: pages),
        )
      
      ],
    );
  }
}
