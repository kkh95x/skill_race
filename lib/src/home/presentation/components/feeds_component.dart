import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';
import 'package:skill_race/src/video/application/video_controller_provider.dart';
import 'package:skill_race/src/video/presentation/widgets/video_card_widgets.dart';
const urls=[
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download%20(1).mp4?alt=media&token=9e952105-bf77-41a3-a437-805a452e252b",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download%20(2).mp4?alt=media&token=c81cc4ac-8c42-4759-8625-f35ee877370f",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download.mp4?alt=media&token=7e8cf9ed-28c9-4efe-9770-bd4d4e213214"
];
class FeedsComponent extends ConsumerWidget {
  const FeedsComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
     ref.read(videoController(urls[0]));
     ref.read(videoController(urls[1]));
     ref.read(videoController(urls[2]));
    
    return PageView.builder(itemBuilder: (context, index) {
      
      return  VideoCard(url:urls[index%urls.length],
      onTapAi: () {
        ref.read(userUnAuthHelper(context));
      },
      onTapLike: () {
                ref.read(userUnAuthHelper(context));

      },
      onTapJob: () {
                ref.read(userUnAuthHelper(context));

      },
      onTapJobComint: () {
                ref.read(userUnAuthHelper(context));

      },
      onTapJobMe: () {
                ref.read(userUnAuthHelper(context));

      },
      onTapJobMore: () {
                ref.read(userUnAuthHelper(context));

      },
      );
    },
    
    scrollDirection: Axis.vertical,
    );
  }
}