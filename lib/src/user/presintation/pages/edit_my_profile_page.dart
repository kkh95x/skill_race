import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:skill_race/src/auth/application/auth_notifer.dart';

import 'package:skill_race/src/employe/presentation/components/edit_emp_my_profile_component.dart';
import 'package:skill_race/src/hiring/presentation/components/edit_profile_hiring_component.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';

import 'package:skill_race/src/user/domain/app_user.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditMyProfilePage extends ConsumerWidget {
  const EditMyProfilePage({super.key});
  static String get routeName => "edit_my_profile";
  static String get routePath => "/$routeName";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userAuthNotifer).currentUser;
    return Scaffold(
      body: SingleChildScrollView(
        physics:const AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              appBarComponent(
                  title: "Edit My Profile", context: context, showBack: true),
                  if(user?.accountType==AccountType.employe)
                  const EditEmpMyProfileComponent(),
                  if(user?.accountType==AccountType.hiring)

                   const EditHiringMyProfileComponent()
              

            ],
          ),
        ),
      ),
    );
  }
}
