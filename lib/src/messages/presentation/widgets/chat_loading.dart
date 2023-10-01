import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ChatLoadingWidget extends StatelessWidget {
  const ChatLoadingWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black12,
      child: SizedBox(
        child: ListTile(
          leading:
         ( ClipRRect(
          borderRadius: BorderRadius.circular(45.r),
          child: Container(
            width: 45.r,
            height: 45.r,
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color:  Colors.black26,
            ),
           ))
         
         )
         
           ,
          title:const Text("***** *******",style: TextStyle(color:  Colors.black26,),),
          subtitle:const Text("************",style: TextStyle(color:  Colors.black26,),),
          trailing: const Text("${00}:${00}",style: TextStyle(color:  Colors.black26,),),
        ),
      ),
    );
  }
}