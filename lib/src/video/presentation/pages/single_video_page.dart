

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/project/application/get_project_by_id_provider.dart';
import 'package:skill_race/src/user/presintation/components/profile_component.dart';
import 'package:skill_race/src/video/presentation/widgets/video_card_widgets.dart';

class SingleVideoPage extends ConsumerWidget {
  const SingleVideoPage({super.key ,required this.url});
  static String get routeName=>"single-video";
  static String get routePath=>"/$routeName";
  final String url;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: ref.watch(getProjectByIdProvider(url)).when(data: (data) {
        if(data==null){
          return const Center(child: Text("Post Not Found"),);
        }
        return VideoCard(url: data.videoUrl??"",isSingePage: true,
        description: data.description,
        );
      }, error: (error, stackTrace) => Center(child: Text("Error:${error.toString()}"),), loading: () =>const Center(child: CircularProgressIndicator(),),)
      // PageView.builder(itemBuilder:  (context, index) {
      //   if(index==0){
      //     return VideoCard(url: url,isSingePage: true,);
      //   }else{
      //     return const SizedBox();
      //   }
      // },
      // itemCount: 2,)
      
    );
  }
}