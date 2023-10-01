


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/project/application/get_project_by_id_provider.dart';
import 'package:skill_race/src/project/presentaion/widgets/post_widget.dart';

class SingleProjectPage extends ConsumerWidget {
  const SingleProjectPage({super.key,required this.projectId});

  static String get routeName=>"project-page";
  static String get routePath=>"/$routeName";
  final String projectId;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
    body:SingleChildScrollView(
      child: Column(children: [
        appBarComponent(title: "Project", context: context,showBack: true),
    
        SizedBox(height: 30.h,),
        ref.watch(getProjectByIdProvider(projectId)).when(data: (data) {
          if(data==null){
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Project Not Founded")],);
          }
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: PostWidget(images: data.images, price: data.price, specialization: data.specialization, starts: data.stars, postId: data.id??"", postType: data.postProjectType, userId: data.userId
           , video: data.videoUrl,
            ));
    
    
          
        }, error: (error, stackTrace) => Center(child: Text(error.toString()),), loading: () =>const Center(child: CircularProgressIndicator(),),)
      ],),
    ),
    );
  }
}