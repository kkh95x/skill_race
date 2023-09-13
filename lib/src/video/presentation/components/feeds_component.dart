import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/src/home/presentation/pages/filter_page.dart';
import 'package:skill_race/src/home/presentation/pages/need_employ_page.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';
import 'package:skill_race/src/video/application/get_videos_pagination.dart';
import 'package:skill_race/src/video/application/video_controller_provider.dart';
import 'package:skill_race/src/video/presentation/widgets/video_card_widgets.dart';
List<String> urls=[
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download%20(1).mp4?alt=media&token=9e952105-bf77-41a3-a437-805a452e252b",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download%20(2).mp4?alt=media&token=c81cc4ac-8c42-4759-8625-f35ee877370f",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download.mp4?alt=media&token=7e8cf9ed-28c9-4efe-9770-bd4d4e213214"
];
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
      
      return  PageView.builder(
        controller: controller,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
    
      return  VideoCard(url:recipes[index].videoUrl??"",
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