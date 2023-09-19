

import 'package:auto_size_text/auto_size_text.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/src/employe/presentation/pages/global_emp_about_page.dart';
import 'package:skill_race/src/employe/presentation/pages/profile_emp_about_page.dart';
import 'package:skill_race/src/employe/presentation/pages/reviews_page.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/user/application/get_user_py_id_provider.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:skill_race/src/user/presintation/components/header_profile_component.dart';
import 'package:skill_race/src/user/presintation/pages/profile_photo_page.dart';
import 'package:skill_race/src/user/presintation/pages/profile_videos_page.dart';

const _profilePagesEmployeedTitle = [
  "Videos",
  "Photos",
  "About",

  "Reviews"
];

class GlobalEmpProfileComponent extends ConsumerWidget {
  const GlobalEmpProfileComponent({super.key,required this.userId});
  final String userId;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ref.watch(getUserById(userId)).when(data: (user) {
      if(user==null||user.accountType ==AccountType.hiring){
        return const Center(
          child: Text("User Not Found") ,
        );
      
      }
     

      return Column(
      children: [
  appBarComponent(title: "Profile", context: context),
        HeaderProfileComponent(
          isMineProfile: false,
          picUrl: user.imgUrl ??
              "https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465",
          countryName: user.country ?? "Country",
          specialization: user.employee?.specialization ?? '-',
          state: user.state.toScreen(),
          username: user.fullname,
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
                for (int i = 0; i < _profilePagesEmployeedTitle.length; i++)
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    height: 37.h,
                    child: AutoSizeText(
                      _profilePagesEmployeedTitle[i],
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
              views:  [
  ProfileVideosPage(id: userId),
  ProfilePhotosPage(userId: userId,),
  GlobalEmpAbouteProfilePage(user: user),
  ReviewsComponent()
]),
        )

],
      );
      
    }, error: (error, stackTrace) => const Center(child: Text("Error Whene load User Data"),), loading: () {
      return const Center(child: CircularProgressIndicator(),);
    },);
  }
}