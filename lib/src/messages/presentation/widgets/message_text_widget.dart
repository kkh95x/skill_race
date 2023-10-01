

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';

class MessageTextWidget extends ConsumerWidget {
  const MessageTextWidget({super.key,required this.text, this.isMine=true,required this.createdAt,required this.isSeen});
  final String text;
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
            constraints: BoxConstraints(maxWidth: 256.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color:isMine? Theme.of(context).colorScheme.surface:null,
              gradient:isMine?null: LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary])
            ),            
            child: Column(
              crossAxisAlignment:isMine?CrossAxisAlignment.end: CrossAxisAlignment.start,
              children: [
                Text(text,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: isMine?null:Theme.of(context).colorScheme.onPrimary),),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(ref.read(chatDateFormat(createdAt)),style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: isMine?Colors.black.withOpacity(.5):Theme.of(context).colorScheme.onPrimary.withOpacity(.5),fontSize: 10.sp),),
                    if(isMine)
                    SizedBox(width: 5.w,),
                     if(isMine)
                     Icon(Icons.done_all,size: 18.sp,color: isSeen?Colors.blue:Colors.black.withOpacity(.5),)
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
