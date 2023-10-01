import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';

class ChatWidget extends ConsumerWidget{
  const ChatWidget({super.key,required this.chatSubTitle,required this.chatTitle,required this.date,required this.isUnSeen,required this.urlProfile});
  final String chatTitle;
  final String chatSubTitle;
  final String? urlProfile;
  final DateTime date;
  final bool isUnSeen;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(
        
        color: Theme.of(context).colorScheme.surface))),
      child: ListTile(
        leading:
       ( ClipRRect(
        borderRadius: BorderRadius.circular(45.r),
        child: CachedNetworkImage(
          width: 45.r,
          height: 45.r,
          imageUrl: urlProfile?? "https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465",
          placeholder: (context, url) =>const Center(child: CircularProgressIndicator(),),))
       
       )
       
         ,
        title: Text(chatTitle),
        subtitle: Text(chatSubTitle),
        trailing: Column(
          children: [
            Text(ref.read(chatDateFormat(date))),
            if(isUnSeen)
            Container(
              height: 17.r,
              width: 17.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary])
              ),
              
            )
          ],
        ),
      ),
    );
  }
}