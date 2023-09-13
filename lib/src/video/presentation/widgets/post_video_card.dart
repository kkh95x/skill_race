import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:skill_race/src/video/application/video_controller_provider.dart';
import 'package:skill_race/src/video/presentation/pages/single_video_page.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
final secoundToHidden=StateProvider((ref) => 0);
final isPlayingProvider = StateProvider<bool>((ref) => false);
final hiddenHelperControlls = StateProvider<bool>((ref) => true);
final isMuteProvider = StateProvider<bool>((ref) => false);

class PostVideoCard extends ConsumerWidget {
  const PostVideoCard({super.key, required this.url,required this.postId});
  final String url;
  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(videoPostController(
      url,
    ));

    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        final isVisible = info.visibleFraction == 0.0;
        if (isVisible) {
          if(controller.hasValue){
          controller.value?.pause();}
        } else {}

        // if(info.visibleFraction<0.2){
        //   data.pause();
        // }
        // // if (!isVisible) {
        // //   data.pause();
        // }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.h),
        height: 500.h,

        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: controller.when(
            data: (data) {
              return GestureDetector(
                  onTap: () async {
                    ref.read(hiddenHelperControlls.notifier).state=!ref.read(hiddenHelperControlls.notifier).state;

                    if(ref.read(hiddenHelperControlls.notifier).state){
Future.delayed(
                      const Duration(seconds: 2),
                      () {
                     ref.read(hiddenHelperControlls.notifier).state=false;
                       
                        
                      },
                    );
                    }
                    
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 500.h,
                        width: MediaQuery.of(context).size.width,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: data.value.size.width,
                            height: data.value.size.height,
                            child: VideoPlayer(data),
                          ),
                        ),
                      ),
                      Consumer(builder: (context, ref, child) {
                        final isPlaying = ref.watch(isPlayingProvider);
                        final isHiddenControlls =
                            ref.watch(hiddenHelperControlls);
                        return AnimatedOpacity(
                          duration: const Duration(milliseconds: 400),
                          opacity: !isHiddenControlls ? 0 : 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 60.sp,
                              width: 60.sp,
                              decoration: const BoxDecoration(
                                  color: Colors.black45,
                                  shape: BoxShape.circle),
                              child: GestureDetector(
                                  onTap: () async {
                                    if (isPlaying) {
                                      await data.pause();
                                    } else {
                                      await data.play();
                                    }
                                    ref.read(isPlayingProvider.notifier).state =
                                        !isPlaying;
                                    //  ref.read(hiddenHelperControlls.notifier).state=true;
                                    Future.delayed(
                                      const Duration(seconds: 3),
                                      () {
                                        if (!isHiddenControlls && isPlaying) {
                                          // ref
                                          //     .read(hiddenHelperControlls
                                          //         .notifier)
                                          //     .state = false;
                                        }
                                      },
                                    );
                                  },
                                  child: isPlaying
                                      ? Icon(
                                          Icons.pause,
                                          color: Colors.grey.shade50,
                                          size: 40.sp,
                                        )
                                      : Icon(
                                          Icons.play_arrow,
                                          color: Colors.grey.shade50,
                                          size: 40.sp,
                                        )),
                            ),
                          ),
                        );
                      }),
                      Positioned(
                        bottom: 3.h,
                        left: 0,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: VideoProgressIndicator(
                              // padding: EdgeInsets.symmetric(horizontal: 20.w),
                              colors: VideoProgressColors(
                                  playedColor:
                                      Theme.of(context).colorScheme.primary),
                              data,
                              allowScrubbing: true),
                        ),
                      ),
                      Consumer(builder: (context, ref, child) {
                        final isMute = ref.watch(isMuteProvider);
                        return Positioned(
                            top: 10.h,
                            left: 0,
                            child: IconButton(
                                onPressed: () {
                                  if (isMute) {
                                    data.setVolume(100);
                                  } else {
                                    data.setVolume(0);
                                  }
                                  ref.read(isMuteProvider.notifier).state =
                                      !isMute;
                                },
                                icon: Icon(isMute
                                    ? Icons.volume_off_rounded
                                    : Icons.volume_up)));
                      }),
                      Positioned(
                          top: 10.h,
                          right: 0,
                          child: IconButton(
                              onPressed: () {
                                data.pause();
                                context.push(SingleVideoPage.routePath,
                                    extra: postId);
                              },
                              icon: const Icon(Icons.zoom_out_map)))
                    ],
                  ));
            },
            error: (error, stackTrace) {
              return Center(
                child: Text("Error: ${error.toString()}"),
              );
            },
            loading: () {
              return Container(
                color: Colors.black,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
