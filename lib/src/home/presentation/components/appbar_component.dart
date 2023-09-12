
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/gen/assets.gen.dart';


  AppBar  appBarComponent({required String title,required BuildContext context,bool showBack=false,Function()? onBack}) {
    return AppBar(
          actions: [
            Container(
                margin: EdgeInsets.only(right: 16.w),
                child: Assets.icons.png.notification.image())
          ],
          leading: Visibility(
            visible: showBack,
            child: IconButton(
              onPressed: () {
                context.pop();
                onBack?.call();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.sp,
              ),
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
          centerTitle: true,
          title: Text(title,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              )));
  }
