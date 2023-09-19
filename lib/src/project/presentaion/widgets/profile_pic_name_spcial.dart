


import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/src/employe/presentation/pages/global_profile_emp.dart';
import 'package:skill_race/src/user/application/get_user_py_id_provider.dart';
class ProfilePicNameSpcialWidget extends ConsumerWidget {
  const ProfilePicNameSpcialWidget({super.key,required this.userId});
final String userId;
  @override
  Widget build(BuildContext context,WidgetRef ref) {


   

    return ref.watch(getUserById(userId)).when(data: (data) {
      return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.push(GlobalEmpProfilePage.routePath,extra: data?.id);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child:CachedNetworkImage(
                width: 46.r,
                                  height: 45.r,
              imageUrl: data?.imgUrl??"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"
              ,fit: BoxFit.cover) ,
          ),
        ),
        SizedBox(width: 12.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
               onTap: () {
            context.push(GlobalEmpProfilePage.routePath,extra: data?.id);
          },
              child: Text(data?.fullname??" ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            Text(data?.employee?.specialization??' ',
             style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.outline,
            ),)
          ],
        ),
       
      ],
    );
    }, error:(error, stackTrace) =>  Center(child: Text("Error: ${error.toString()}")), loading: () {
      return Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey,
        child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.r),
          child:Container(
              width: 46.r,
                                height: 45.r,
                                decoration: BoxDecoration(color: Colors.grey),
            ) ,
        ),
        SizedBox(width: 12.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("**** **** ",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
              fontWeight: FontWeight.w500
            ),
            ),
            Text('****',
             style: TextStyle(
              fontSize: 12.sp,
              
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),)
          ],
        ),
       
      ],
    ));
      
    },);
    
    
  }
}