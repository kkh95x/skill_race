

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/project/application/get_project_by_id_provider.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';
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
        onTapLike: () {
                   ref.read(userUnAuthHelper(context));
        final user= ref.read(userAuthNotifer).currentUser;
        if(user!=null){
          List<String> oldLikes=data.likesUsers??[];
          if(oldLikes.contains(user.id)){
         final newLikes=   oldLikes.where((element) => element!=user.id,).toList();
         ref.read(postProjectRepositoryProvider).update(data.copyWith(likesUsers: newLikes));
          }else{
         final newLikes= [...oldLikes,user.id!];
         ref.read(postProjectRepositoryProvider).update(data.copyWith(likesUsers: newLikes));
          }
        }

        },
        project: data,
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