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
final isMuteProvider = StateProvider.family<bool,BuildContext>((ref,co) => false);
class PostVideoCard extends ConsumerStatefulWidget {
  const PostVideoCard({super.key, required this.url,required this.postId});
  final String url;
  final String postId;

  @override
  ConsumerState<PostVideoCard> createState() => _PostVideoCardState();
}

class _PostVideoCardState extends ConsumerState<PostVideoCard> {
   VideoPlayerController? _controller;
  @override
  void initState() {
    // _controller=VideoPlayerController.networkUrl(Uri.parse(widget.url))
    // ..initialize().then((value) {
    //   setState(() {
        
    //   });
    // });
    super.initState();
  }
  // @override
  // void deactivate() {

  //   if(_controller?.value.isInitialized??false){
  //     _controller?.play();
  //     setState(() {
        
  //     });
  //   }
  //   super.deactivate();
  // }
  @override
  Widget build(BuildContext context) {
    try{
_controller=ref.watch(videoControllerProvider(widget.url)).value;

    
    }catch(e){
      return  SizedBox(
            height: 500.h,
                        width: MediaQuery.of(context).size.width,
        child:const  Center(child: Text("Server Error, Cant playing The Video"),));
    }
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        final isVisible = info.visibleFraction == 0.0;
        if (isVisible) {
          
          _controller?.pause();
        } 

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
          child: _controller?.value.isInitialized??false ?
               GestureDetector(
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
                            width: _controller?.value.size.width,
                            height: _controller?.value.size.height,
                            child: VideoPlayer(_controller!),
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
                                      await _controller?.pause();
                                    } else {
                                      await _controller?.play();
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
                                  child: _controller?.value.isPlaying??false
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
                              _controller!,
                              allowScrubbing: true),
                        ),
                      ),
                      Consumer(builder: (context, ref, child) {
                        final isMute = ref.watch(isMuteProvider(context));
                        return Positioned(
                            top: 10.h,
                            left: 0,
                            child: IconButton(
                                onPressed: () {
                                  if (isMute) {
                                    _controller?.setVolume(100);
                                  } else {
                                    _controller?.setVolume(0);
                                  }
                                  ref.read(isMuteProvider(context).notifier).state =
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
                                _controller?.pause();
                                context.push(SingleVideoPage.routePath,
                                    extra: widget.postId);
                              },
                              icon: const Icon(Icons.zoom_out_map)))
                    ],
                  )):Container(
                color: Colors.black,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            )
            
          
        
      ),
    );
  }
}
