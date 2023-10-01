
 import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
import 'package:skill_race/src/user/application/get_user_py_id_provider.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

AppBar getMessagesAppBar(BuildContext context, WidgetRef ref, AppUser? user,Chat? chat) {
    return appBarComponent(
      toolbarHeight: 100.h,
      showBack: true,
      
      title: "", context: context,isMessagePage: true ,
    widgetTitle:chat==null?userTitle("https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"
    , "username",context):
    ref.watch(getUserById(chat.usersId.singleWhere((element) => element!=user?.id))).when(data: (data) {
      return userTitle(data?.imgUrl??"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"
      , data?.fullname??"username",context);
    }, error:(error, stackTrace) => userTitle("https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"
    , "username",context) , loading:() =>  userTitle("https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"
    , "loading",context))
    
    
    );
  }
  Widget userTitle(String imageUrl,String username,BuildContext context){
    return Container(
          margin: EdgeInsets.symmetric(vertical: 12.h),
      child: Column(
        children: [
           Container(
            height: 40.r,
            width: 40.r,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.r),
              child: CachedNetworkImage(imageUrl: imageUrl,fit: BoxFit.cover,placeholder: (context, url) =>const Center(child: CircularProgressIndicator(),),),
            ),
           ),
          Text(username,style: Theme.of(context).textTheme.bodyLarge?.copyWith(),)
    
        ],
      ),
    );
  }