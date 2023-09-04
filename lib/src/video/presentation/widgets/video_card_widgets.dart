import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/video/application/video_controller_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'circle_image_animation.dart';
class VideoCard extends ConsumerStatefulWidget {
  const VideoCard({super.key, required this.url,  this.onTapAi,
   this.onTapJob,
   this.onTapJobComint,
   this.onTapJobMe,
   this.onTapJobMore,
   this.onTapLike,
   this.onTapFilter
  
  
  });
  final String url;
//  final AsyncValue<VideoPlayerController> controller;
  final void Function()? onTapAi;
  final void Function()? onTapJob;
  final void Function()? onTapJobMe;
  final void Function()? onTapLike;
  final void Function()? onTapJobComint;
  final void Function()? onTapJobMore;

    final void Function()? onTapFilter;


  @override
  ConsumerState<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends ConsumerState<VideoCard> {
  @override
  void dispose() {
    super.dispose();
    ref.watch(videoController(widget.url)).value?.pause();
  }

  @override
  Widget build(BuildContext contextf) {
     final controller= ref.watch(videoController(widget.url));
    return Stack(
      children: [
        controller.when(
              data: (data) {
                data.play();
                data.setLooping(true);
                return GestureDetector(
                  onTap: () {
                    if (data.value.isPlaying) {
                      data.pause();
                    } else {
                      data.play();
                    }
                  },
                  child: SizedBox.expand(
                      child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: data.value.size.width,
                      height: data.value.size.height,
                      child: VideoPlayer(data),
                    ),
                  )),
                );
              },
              error: (error, stackTrace) => Center(
                child: Text(
                  "Error: ${error.toString()}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: Colors.grey,
                ),
              ),
            )

        // : Container(
        //     color: Colors.black,
        //     child: const Center(
        //       child: Text("Loading",style: TextStyle(color: Colors.white),),
        //     ),
        //   ),
        ,
        Padding(
          padding: EdgeInsets.only(bottom: 50.h, left: 10.w, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {
                    
                  }, icon: Icon( Icons.camera_enhance_outlined,
                  size: 40.sp,
                  color: Colors.white.withOpacity(.8),)),

                  const Spacer(),
                  GestureDetector(
                      onTap: ()async {
                        if(widget.onTapAi!=null){
                          await controller.value?.pause();
                          widget.onTapAi?.call();
                        }
                      },
                      child: Assets.icons.png.ai.image(
                        width: 40.r,
                        height: 40.r,
                      )),
                  SizedBox(
                    height: 30.h,
                  ),

                  GestureDetector(
                      onTap:
                       ()async {
                        if(widget.onTapJob!=null){
                          await controller.value?.pause();
                          widget.onTapJob?.call();
                        }
                      },
                      child: Assets.icons.png.job
                          .image(width: 40.r, height: 40.r)),

                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 65.r,
                    height: 65.r,
                    child: Stack(
                      // clipBehavior: Clip.hardEdge,
                      // fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60.r),
                          child: CachedNetworkImage(
                              width: 60.r,
                              height: 60.r,
                              imageUrl:
                                  "https://images.nightcafe.studio/jobs/1dg6rpsglt7JUxmlLlau/1dg6rpsglt7JUxmlLlau--1--gck8s.jpg?tr=w-1600,c-at_max"),
                        ),
                        Positioned(
                          right: 2.r,
                          bottom: 2.r,
                          child: Container(
                            height: 20.r,
                            width: 20.r,
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: Icon(
                              Icons.add,
                              size: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "@username",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        "descriptions for videos here descriptions : sdnsdcndn  ksndnlsd isdnksd mkmods ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),

                  //  Icon(Icons.)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  IconButton(onPressed:() async{
                    if(widget.onTapFilter!=null){
                          await controller.value?.pause();
                          widget.onTapFilter?.call();
                        }
                  },
                  
                  icon:  Icon(Icons.filter_alt_outlined, size: 40.sp,
                  color: Colors.white.withOpacity(.8),),),
                  const Spacer(),
                  GestureDetector(
          onTap:  ()async {
                        if(widget.onTapLike!=null){
                          await controller.value?.pause();
                          widget.onTapLike?.call();
                        }
                      },
          child: Assets.icons.png.loveWhite.image(height: 50.r, width: 50.r)),
                  Text(
                    "1000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                   GestureDetector(
          onTap:  ()async {
                        if(widget.onTapJobComint!=null){
                          await controller.value?.pause();
                          widget.onTapJobComint?.call();
                        }
                      },
          
          child: Assets.icons.png.comint.image(height: 50.r, width: 50.r)),
                  Text(
                    "50",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                 GestureDetector(
          onTap: 
           ()async {
                        if(widget.onTapJobMe!=null){
                          await controller.value?.pause();
                          widget.onTapJobMe?.call();
                        }
                      }
          ,child: Assets.icons.png.jobMe.image(height: 60.r, width: 60.r)),
                  Text(
                    "20",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                 GestureDetector(
          onTap:
           ()async {
                        if(widget.onTapJobMore!=null){
                          await controller.value?.pause();
                          widget.onTapJobMore?.call();
                        }
                      }
          
           ,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 50.sp,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: CircleImageAnimation(
                      child:  Container(
                        padding: EdgeInsets.all(10.sp),
                        
                        decoration: const BoxDecoration(shape: BoxShape.circle ,color:Colors.black),
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(60.r),
                              child: CachedNetworkImage(
                                  width: 30.r,
                                  height: 30.r,
                                  imageUrl:
                                      "https://images.nightcafe.studio/jobs/1dg6rpsglt7JUxmlLlau/1dg6rpsglt7JUxmlLlau--1--gck8s.jpg?tr=w-1600,c-at_max"),
                            ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
