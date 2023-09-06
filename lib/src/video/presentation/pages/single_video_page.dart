

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/home/presentation/components/profile_component.dart';
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
      body: 
      PageView.builder(itemBuilder:  (context, index) {
        if(index==0){
          return VideoCard(url: url,isSingePage: true,);
        }else{
          return const ProfileComponent();
        }
      },
      itemCount: 2,)
      
    );
  }
}