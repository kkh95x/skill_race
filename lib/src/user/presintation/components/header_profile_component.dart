

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/user/presintation/widgets/chat_icon_widget.dart';
import 'package:skill_race/src/user/presintation/widgets/edit_icon_widget.dart';
import 'package:skill_race/src/user/presintation/widgets/save_icon_widget.dart';
class HeaderProfileComponent extends StatelessWidget {
  const HeaderProfileComponent({super.key,required this.picUrl,required this.countryName,required this.specialization,required this.state,required
   this.username,
   this.isMineProfile=true,
   });
  final String picUrl;
  final String username;
  final String specialization;
  final String countryName;
  final String state;
  final bool isMineProfile;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111.h,
      width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.symmetric(horizontal: 16.w,),

            // padding: EdgeInsets.symmetric(horizontal: 16.w,),
      padding: EdgeInsets.symmetric(vertical: 9.h,horizontal: 16.w),
      decoration:  BoxDecoration(color: Theme.of(context).colorScheme.scrim,
      border: Border(top: BorderSide(color:Theme.of(context).colorScheme.primaryContainer.withOpacity(0.2) ))),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[ 
          
          SizedBox(
            height: 95.r,
            width: 95.r,
            child: Stack(
              children: [
                ClipRRect(
          borderRadius: BorderRadius.circular(95.r),child: CachedNetworkImage(imageUrl: picUrl,fit: BoxFit.cover,)),
          Positioned(
            bottom: 5.h,
            right: 5.w,
            child:  Icon(Icons.circle,color: Colors.green,size: 18.sp,))
              ],
            ),
          ),
      SizedBox(width: 8.w,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(username,style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Assets.icons.png.location.image(),
             SizedBox(width: 4.w,),
              Text("$countryName.",style: Theme.of(context).textTheme.titleMedium?.copyWith(color:Theme.of(context).colorScheme.primaryContainer,fontSize: 12.sp,fontWeight: FontWeight.w400)),
            ],
          ),
          ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Theme.of(context).colorScheme.secondary,
                            Theme.of(context).colorScheme.primary
                          ], // Define your gradient colors
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds);
                      },child: Text(specialization,style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),)),
          Text(state,style:  TextStyle(color: Colors.green,fontSize: 12.sp,fontWeight: FontWeight.w400),)

        ],
      ),
      const Spacer(),
      if(isMineProfile)
     const EditIconWidget(),
     if(!isMineProfile)
     
      Container(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                 
         SaveIconWidget(),
         ChatIconWidget(),
      
        ],
           ),
      )

      
      ]),
    );
  }
}