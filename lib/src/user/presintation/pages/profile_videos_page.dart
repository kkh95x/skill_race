


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_pinput/reactive_pinput.dart';
import 'package:skill_race/src/user/application/get_may_video_provider.dart';
import 'package:skill_race/src/video/presentation/pages/single_video_page.dart';
import 'package:skill_race/src/video/presentation/widgets/videos_profile_card_widget.dart';

class ProfileVideosPage extends ConsumerWidget {
  const ProfileVideosPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ref.watch(getMyVideosProvider)
    .when(data: (data) {
      return GridView.builder(gridDelegate: 
      
     const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
     itemCount: data.length,
     itemBuilder: (context, index) {
        return VideoProfileCard(
          onTap: () {
            context.push(SingleVideoPage.routePath,extra: data[index].url);
          },
          price: data[index].price,
          starts: data[index].starts,
          title: data[index].title,
          url: data[index].url,

        );
      },);
    }, error: (error, stackTrace) => Center(child: Text("Error:${error.toString()}"),), loading: () =>const Center(child: CircularProgressIndicator(),),);
  }
}