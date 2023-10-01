


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/images/presentation/widgets/image_profile_card.dart';
import 'package:skill_race/src/project/application/get_project_by_id_provider.dart';
import 'package:skill_race/src/project/domain/project.dart';
import 'package:skill_race/src/project/presentaion/pages/singe_project_page.dart';
import 'package:skill_race/src/project/presentaion/widgets/profile_pic_name_spcial.dart';
import 'package:skill_race/src/video/application/video_thumbnail_provider.dart';
import 'package:skill_race/src/video/presentation/widgets/videos_profile_card_widget.dart';

class ProjectCardComponents extends ConsumerWidget {
  const ProjectCardComponents({super.key,
  required this.projectId,
  
  });
  final String projectId;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
 
      padding: EdgeInsets.all(5.sp),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      child: ref.watch(getProjectByIdProvider(projectId)).when(data: (data) {
        if(data==null){
          return const Center(child: Text("Project Not Fount"),);
        }
return Row(
  mainAxisSize: MainAxisSize.min,
  children: [
 if(data.postProjectType==PostProjectType.images)
           _buid_image(data, context)
          
          
          
        else
           _build_video(ref, data, context),
           SizedBox(width: 5.w,),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.title),
          ProfilePicNameSpcialWidget(userId: data.userId,showPic: false,)

        ],
       )
        
  ],
);
      
        
      }, error: (error, stackTrace) {
        return const Center(child: Text("Error"),);
      }, loading: () {
        return Expanded(
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Container(
          color: Colors.grey,
        ),
          ),
        );
    
      
        
      },),
    );
  }

  Widget _build_video(WidgetRef ref, PostProject data, BuildContext context) {
    return SizedBox(
  width: 50.w,height: 70.h,
  
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Stack(
        children: [
        
          ref.watch(videoThumbnail(data.videoUrl??"")).when(data: (data) {
            if(data ==null){
              return Assets.icons.png.logo.image();
            }
            return Image.memory(data,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,);
            
          }, error: (error, stackTrace) => Assets.icons.png.logo.image(), loading:() => const Center(child: CircularProgressIndicator(),))
         ,
         Container(
          width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black,Colors.transparent,Colors.transparent,Colors.black],begin: Alignment.bottomCenter,end: Alignment.topCenter, )
          ),
         ),
        
     
        
          Align(
            alignment: Alignment.center,
            child:GestureDetector(
              onTap:() {
                                context.push(SingleProjectPage.routePath,extra: data.id);

              }, 
              child: Assets.icons.png.play.image()) ,
          )
        
        ],
      ),
    ),
  );
  }

  // ignore: non_constant_identifier_names
  SizedBox _buid_image(PostProject data, BuildContext context) {
    return SizedBox(
  width: 50.w,height: 70.h,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Stack(
        children: [
        
        
            CachedNetworkImage(imageUrl: data.images?.first??"",fit: BoxFit.cover,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,)
         ,
         Container(
          width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black,Colors.transparent,Colors.transparent,Colors.black],begin: Alignment.bottomCenter,end: Alignment.topCenter, )
          ),
         ),
           
       

          Align(
            alignment: Alignment.center,
            child: GestureDetector(
        onTap: () {
                      context.push(SingleProjectPage.routePath,extra: data.id);

        },
        
        child: Container( 
          color: Colors.transparent,
          width: 100.w,height: 100.h,)),
          ),
         
        
        ],
      ),
    ),
  );
  }
}