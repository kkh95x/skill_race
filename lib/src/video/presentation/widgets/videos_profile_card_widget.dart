


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/video/application/video_thumbnail_provider.dart';

class VideoProfileCard extends ConsumerWidget {
  const VideoProfileCard({super.key,required this.starts,required this.title,required this.url,required this.price,required this.onTap,this.onTapMore});
 final  String url;
 final  String title;
 final  int price;
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
          
            ref.watch(videoThumbnail(url)).when(data: (data) {
              if(data ==null){
                return Assets.icons.png.logo.image();
              }
              return Image.memory(data,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,);
              
            }, error: (error, stackTrace) => Assets.icons.png.logo.image(), loading:() => const Center(child: CircularProgressIndicator(),))
           ,
           Container(
            width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black,Colors.transparent,Colors.transparent,Colors.black],begin: Alignment.bottomCenter,end: Alignment.topCenter, )
            ),
           ),
             Positioned(
            top: 8.h,
            right: 8.w,
          
            child: GestureDetector(onTap: onTapMore, child: Icon(Icons.more_horiz,size: 18.sp,color: Colors.white,))),
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
              child:GestureDetector(
                onTap:onTap ,
                child: Assets.icons.png.play.image()) ,
            )
          
          ],
        ),
      ),
    );
  }
}