
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/data/firestore_message_repository.dart';
import 'package:skill_race/src/messages/domain/message.dart';
import 'package:skill_race/src/messages/presentation/widgets/message_image_widget.dart';
import 'package:skill_race/src/messages/presentation/widgets/message_text_widget.dart';
import 'package:skill_race/src/messages/presentation/widgets/message_video_widget.dart';
import 'package:skill_race/src/messages/presentation/widgets/message_voice_widget.dart';
import 'package:skill_race/src/user/application/get_user_py_id_provider.dart';

class MessageComponent extends ConsumerWidget {
  const MessageComponent({super.key,required this.message,this.isLocaly=false});
  final  Message message;
  final bool isLocaly;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
   final isMine=  ref.read(userAuthNotifer).currentUser?.id==message.userId;
   
   if(!isMine){
    if(message.messageState==MessageState.unSeen){
  ref.read(messageRepositoryProvider).update(message.copyWith(messageState: MessageState.seen));
    }
   }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:isMine?MainAxisAlignment.start: MainAxisAlignment.end,
          children: [
            if(isMine)
            ref.watch(getUserById(message.userId)).when(data: (data) {
              return userCircule(data?.imgUrl, context);
            }, error: (error, stackTrace) {
              return userCircule(null, context);
            }, loading: () {
                        return userCircule(null, context);

            },),
            

             if (message.messageType case MessageType.video) 
           MessageVideoWidget(url:message.content,createdAt: message.createdAt,isMine: isMine,isSeen: message.messageState==MessageState.seen,)
         else if (message.messageType case MessageType.voice) 
           MessageVoiocetWidget(source: message.content, createdAt: message.createdAt, id: message.id??"${Random().nextInt(100000)}",isLocaly: isLocaly,isMine: isMine,isSeen: message.messageState==MessageState.seen)
         else if (message.messageType case MessageType.image) 
           MessageImageWidget(url:message.content,createdAt: message.createdAt,isMine: isMine,isSeen: message.messageState==MessageState.seen)
         else if (message.messageType case MessageType.text) 
           MessageTextWidget(text:message.content,createdAt: message.createdAt,isMine: isMine,isSeen: message.messageState==MessageState.seen,),
         if(!isMine)
            ref.watch(getUserById(message.userId)).when(data: (data) {
              return userCircule(data?.imgUrl, context);
            }, error: (error, stackTrace) {
              return userCircule(null, context);
            }, loading: () {
                        return userCircule(null, context);

            },),
          ],
        ),
        
      ],
    );
 
  }
  Widget userCircule(String? imageUrl,BuildContext context){
    return Container(
          margin: EdgeInsets.symmetric(vertical: 12.h),
   
       height: 40.r,
       width: 40.r,
       child: ClipRRect(
         borderRadius: BorderRadius.circular(40.r),
         child: CachedNetworkImage(imageUrl: imageUrl??"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465",fit: BoxFit.cover,placeholder: (context, url) =>const Center(child: CircularProgressIndicator(),),),
       ),
      
    );
  }
}