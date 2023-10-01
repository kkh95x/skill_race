import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/home/presentation/pages/filter_page.dart';
import 'package:skill_race/src/hiring/presentation/pages/need_employ_page.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';
import 'package:skill_race/src/video/application/get_videos_pagination.dart';
import 'package:skill_race/src/video/application/video_controller_provider.dart';
import 'package:skill_race/src/video/presentation/widgets/video_card_widgets.dart';

class FeedsComponent extends ConsumerStatefulWidget  {
  const FeedsComponent({super.key});
  @override
  ConsumerState<FeedsComponent> createState() => _FeedsComponentState();
}

class _FeedsComponentState extends ConsumerState<FeedsComponent> {

  @override
  void initState() {

  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     final controller=PageController();
     controller.addListener(() {
      if(controller.position.pixels==controller.position.maxScrollExtent){
        ref.read(getVideosPagination.notifier).fetchNextBatch();
      }
      });
    
    return ref.watch(getVideosPagination).when(data: (recipes) {
      final urls=recipes.map((e) => e.videoUrl).toList();
      return  PageView.builder(
        controller: controller,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          if(index+1<recipes.length){
            if(urls[index+1]!=null) {
              ref.read(videoControllerProvider(urls[index+1]!));
            }        
            
          }
          if(index+2<recipes.length){
            if(urls[index+2]!=null) {
              ref.read(videoControllerProvider(urls[index+2]!));
            }
          }
      return  VideoCard(url:recipes[index].videoUrl??"",
      project: recipes[index],
      description: recipes[index].description,
      onTapAi: () {
        ref.read(userUnAuthHelper(context));
      },
      onTapLike: () {
         ref.read(userUnAuthHelper(context));
        final user= ref.read(userAuthNotifer).currentUser;
        if(user!=null){
          List<String> oldLikes=recipes[index].likesUsers??[];
          if(oldLikes.contains(user.id)){
         final newLikes=   oldLikes.where((element) => element!=user.id,).toList();
         ref.read(postProjectRepositoryProvider).update(recipes[index].copyWith(likesUsers: newLikes));
          }else{
         final newLikes= [...oldLikes,user.id!];
         ref.read(postProjectRepositoryProvider).update(recipes[index].copyWith(likesUsers: newLikes));
          }
        }

      },
      onTapJob: () {
                // ref.read(userUnAuthHelper(context));
                          context.push(NeedEmpolyPage.routePath);


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
      //FilterPage
      onTapFilter: () {
        context.push(FilterPage.routePath);
      },
      );
    },
    
    scrollDirection: Axis.vertical,
    );
    }, loading: () {
      return const Center(child: CircularProgressIndicator(),);
      
    }, error: (e, stk) {
      return  Center(child: Text(e.toString()),);      
    }, onGoingLoading: (recipes) {
      return PageView.builder(
        itemCount: recipes.length+1,
        controller: controller,
        itemBuilder: (context, index) {
          if (index==recipes.length){
            return SizedBox(
              height: 100.h,
              child:const Center(child:  CircularProgressIndicator()),
            );
          }
    
      return  VideoCard(url:recipes[index].videoUrl??"",
      project: recipes[index],
        description: recipes[index].description,
        onTapAi: () {
          ref.read(userUnAuthHelper(context));
        },
        onTapLike: () {
                  ref.read(userUnAuthHelper(context));
        
        },
        onTapJob: () {
                  // ref.read(userUnAuthHelper(context));
                            context.push(NeedEmpolyPage.routePath);
        
        
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
        //FilterPage
        onTapFilter: () {
          context.push(FilterPage.routePath);
        },
        );
    },
    
    scrollDirection: Axis.vertical,
    );
      
    }, onGoingError: (recipes, e, stk) {
      return PageView.builder(
        itemCount: recipes.length+1,
        controller: controller,
        itemBuilder: (context, index) {
          if (index==recipes.length){
            return SizedBox(
              height: 100.h,
              child: Center(child:  Text(e.toString())),
            );
          }
    
      return  VideoCard(url:recipes[index].videoUrl??"",
      description: recipes[index].description,
            project: recipes[index],

      onTapAi: () {
        ref.read(userUnAuthHelper(context));
      },
      onTapLike: () {
                ref.read(userUnAuthHelper(context));

      },
      onTapJob: () {
                // ref.read(userUnAuthHelper(context));
                          context.push(NeedEmpolyPage.routePath);


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
      //FilterPage
      onTapFilter: () {
        context.push(FilterPage.routePath);
      },
      );
    },
    
    scrollDirection: Axis.vertical,
    );
    },);
    
     
  }
}