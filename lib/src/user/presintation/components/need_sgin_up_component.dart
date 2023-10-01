

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';

class NeedSginUpComponent extends ConsumerWidget {
  const NeedSginUpComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You need To login first"),
            SizedBox(height: 20.h,),
           DynamicButton(
            title: "Sgin in",
            onPressed: () {
             ref.read(userUnAuthHelper(context));
           },)
          ],
        ),
      ),
    );
  }
}