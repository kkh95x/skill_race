


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/gen/assets.gen.dart';

class ImageProfileCard extends ConsumerWidget {
  const ImageProfileCard({super.key,required this.starts,required this.title,required this.url,required this.price,required this.onTap,this.onTapMore});
 final  String url;
 final  String title;
 final  double price;
final double starts;
final void Function() onTap;
final Function()? onTapMore;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
      margin: EdgeInsets.all(7.sp),
    
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Stack(
          children: [
          
          
              //  Image.memory(data,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,);
              CachedNetworkImage(imageUrl: url,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,)
           ,
           Container(
            width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black,Colors.transparent,Colors.transparent,Colors.black],begin: Alignment.bottomCenter,end: Alignment.topCenter, )
            ),
           ),
             
           Positioned(
            top:8.h,
            left:8.w,
          
            child: Text(title,style: TextStyle(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w400),)),
            Positioned(
          bottom: 8.h,
            left:8.w,
          
            child: Text("$price \$",style: TextStyle(fontSize: 14.sp,color: Colors.white),)),
          Positioned(
            bottom: 8.h,
            right: 8.w,
          
            child: StarsRatingWidget(rating: starts,starsSize: 15,)),

            Align(
              alignment: Alignment.center,
              child: GestureDetector(
          onTap: onTap,
          
          child: Container( 
            color: Colors.transparent,
            width: 100.w,height: 100.h,)),
            ),
            Positioned(
            top: 8.h,
            right: 8.w,
          
            child: GestureDetector(onTap: onTapMore, child: Icon(Icons.more_horiz,size: 18.sp,color: Colors.white,))),
          
          
          
          
          ],
        ),
      ),
    );
  }
}