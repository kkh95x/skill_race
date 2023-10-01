import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';
import 'package:v_platform/v_platform.dart';
// Import package
import 'package:v_chat_voice_player/v_chat_voice_player.dart';

class MessageVoiocetWidget extends ConsumerWidget {
  const MessageVoiocetWidget(
      {super.key,
      required this.source,
      this.isMine = true,
      required this.createdAt,
      required this.isSeen,
      required this.id,
      required this.isLocaly});
  final String source;
  final bool isMine;
  final DateTime createdAt;
  final String id;
  final bool isLocaly;
  final bool isSeen;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment:
          isMine ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        ClipRRect(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 9.w),
            padding: EdgeInsets.all(12.sp),
            constraints: BoxConstraints(maxWidth: 256.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: isMine
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).colorScheme.secondary.withOpacity(.4),
              // gradient:isMine?null: LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary])
            ),
            child: Column(
              crossAxisAlignment:
                  isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                VVoiceMessageView(
                  //  backgroundColor:isMine? Theme.of(context).colorScheme.surface:
                  //  Theme.of(context).colorScheme.secondary.withOpacity(.4),
                  playIcon: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  pauseIcon: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.pause,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  speedBuilder: (speed) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      speed,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  notActiveSliderColor:
                      Theme.of(context).colorScheme.primary.withOpacity(.1),
                  activeSliderColor: Theme.of(context).colorScheme.primary,

                  controller: VVoiceMessageController(
                      id: id,
                      audioSrc: isLocaly
                          ? VPlatformFile.fromPath(fileLocalPath: source)
                          : VPlatformFile.fromUrl(url: source)),
                ),
                 Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
Text(
                  ref.read(chatDateFormat(createdAt)),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black.withOpacity(.5), fontSize: 10.sp),
                ),
                   if(isMine)
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
