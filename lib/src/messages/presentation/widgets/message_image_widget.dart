

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';

class MessageImageWidget extends ConsumerWidget {
  const MessageImageWidget({super.key,required this.url, this.isMine=true,required this.createdAt,required this.isSeen});
  final String url;
  final bool isMine;
  final DateTime createdAt;
  final bool isSeen;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Row(
     mainAxisAlignment: isMine?MainAxisAlignment.start:MainAxisAlignment.end,
      children: [
        ClipRRect(
          
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.h,horizontal: 9.w),
            padding: EdgeInsets.all(12.sp),
            constraints: BoxConstraints(maxWidth: 256.w,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color:isMine? Theme.of(context).colorScheme.surface:null,
              gradient:isMine?null: LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary])
            ),            
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:isMine?CrossAxisAlignment.end: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 400.h),
                  child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18.r),
                
                    child: GestureDetector(
                      onTap: () {
                        showImageViewer(
                
                        context,
                  CachedNetworkImageProvider(url), 
                        immersive: true,
                        useSafeArea: true,   
                           
                                        
                          //  CachedNetworkImageProvider(recipes[index].images?.first??"") ,
                        swipeDismissible: true,                      
                        doubleTapZoomable: true);
                      },
                      child: CachedNetworkImage(imageUrl:url, width: MediaQuery.of(context).size.width,
                      
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                  Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                Text(ref.read(chatDateFormat(createdAt)),style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: isMine?Colors.black.withOpacity(.5):Theme.of(context).colorScheme.onPrimary.withOpacity(.5),fontSize: 10.sp),)
                    ,if(isMine)
                    SizedBox(width: 5.w,),
                     if(isMine)
                     Icon(Icons.done_all,size: 18.sp,color: isSeen?Colors.blue:isMine?Colors.black.withOpacity(.5):Theme.of(context).colorScheme.onPrimary.withOpacity(.5),)
                    ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
