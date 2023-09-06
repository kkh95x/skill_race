


import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProfilePicNameSpcialWidget extends StatelessWidget {
  const ProfilePicNameSpcialWidget({super.key,required this.imageUrl,required this.special,required this.usename});
 final String usename;
 final String imageUrl;
 final String special;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.r),
          child:CachedNetworkImage(
              width: 46.r,
                                height: 45.r,
            imageUrl: imageUrl,fit: BoxFit.cover) ,
        ),
        SizedBox(width: 12.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(usename,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500
            ),
            ),
            Text(special,
             style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.outline,
            ),)
          ],
        ),
       
      ],
    );
  }
}