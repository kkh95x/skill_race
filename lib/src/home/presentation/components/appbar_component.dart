
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/messages/presentation/pages/chats_page.dart';


  AppBar  appBarComponent({required String title,required BuildContext context,bool showBack=false,double? toolbarHeight,Function()? onBack,bool isMessagePage=false,bool showMessage=true,Widget? widgetTitle}) {
    return AppBar(
      toolbarHeight:toolbarHeight,
      
          actions: [
            if(!isMessagePage&&showMessage)
              GestureDetector(
                onTap: () {
                  context.push(ChatsPage.routePath);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Assets.icons.png.messagner.image()),
              ),

            if(!isMessagePage)
            Container(
              margin: EdgeInsets.only(right: 16.w),

              child: Assets.icons.png.notification.image()),
            
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
          centerTitle: isMessagePage,
          title:isMessagePage?widgetTitle:
          
           Text(title,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              )));
  }
