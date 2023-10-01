import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/gen/assets.gen.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/presentation/pages/global_profile_emp.dart';
import 'package:skill_race/src/project/domain/project.dart';
import 'package:skill_race/src/user/application/get_user_py_id_provider.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:skill_race/src/video/application/video_controller_provider.dart';
import 'package:video_player/video_player.dart';
import 'circle_image_animation.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoCard extends ConsumerStatefulWidget {
  const VideoCard(
      {super.key,
      required this.url,
      this.onTapAi,
      this.onTapJob,
      this.onTapJobComint,
      this.onTapJobMe,
      this.onTapJobMore,
      this.description,
      this.onTapLike,
      this.isSingePage = false,
      required this.project,
      this.onTapFilter});
  final String url;
//  final AsyncValue<VideoPlayerController> controller;
  final void Function()? onTapAi;
  final void Function()? onTapJob;
  final void Function()? onTapJobMe;
  final void Function()? onTapLike;
  final void Function()? onTapJobComint;
  final void Function()? onTapJobMore;
  final bool isSingePage;
  final void Function()? onTapFilter;
  final String? description;
  final PostProject project;

  @override
  ConsumerState<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends ConsumerState<VideoCard> {
  VideoPlayerController? _controller;

  @override
  Widget build(BuildContext context) {
    final userAccount = ref.read(userAuthNotifer).currentUser?.accountType;
    try {
      _controller = ref.watch(videoControllerProvider(widget.url)).value;
    } catch (e) {
      return const Expanded(
          child: Center(
        child: Text(
          "Server Error, Cant playing The Video",
          style: TextStyle(color: Colors.white),
        ),
      ));
    }
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        final isVisible = info.visibleFraction > 0.5;
        if (isVisible) {
          if (_controller?.value.isInitialized ?? false) {
            _controller?.play();
          }
        } else {
          if (_controller?.value.isInitialized ?? false) {
            _controller?.pause();
          }
        }
      },
      child: SafeArea(
        top: false,
        child: Stack(
          children: [
            Builder(
              builder: (context) {
                _controller?.play();
                _controller?.setLooping(true);
                return _controller?.value.isInitialized ?? false
                    ? GestureDetector(
                        onTap: () {
                          if (_controller?.value.isPlaying ?? false) {
                            _controller?.pause();
                          } else {
                            _controller?.play();
                          }
                        },
                        child: SizedBox.expand(
                            child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _controller?.value.size.width,
                            height: _controller?.value.size.height,
                            child: VideoPlayer(_controller!),
                          ),
                        )),
                      )
                    : const Center(
                        child: CircularProgressIndicator(
                        color: Colors.grey,
                      ));
              },
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
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_enhance_outlined,
                            size: 25.sp,
                            color: Colors.white.withOpacity(.8),
                          )),

                      const Spacer(),
                      GestureDetector(
                          onTap: () async {
                            if (widget.onTapAi != null) {
                              // await controller.value?.pause();
                              widget.onTapAi?.call();
                            }
                          },
                          child: Assets.icons.png.ai.image(
                            width: 30.r,
                            height: 30.r,
                          )),
                      SizedBox(
                        height: 30.h,
                      ),

                      Visibility(
                        visible: !(userAccount == AccountType.employe),
                        child: GestureDetector(
                            onTap: () async {
                              if (widget.onTapJob != null) {
                                // await controller.value?.pause();
                                widget.onTapJob?.call();
                              }
                            },
                            child: Assets.icons.png.job
                                .image(width: 30.r, height: 30.r)),
                      ),

                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 65.r,
                        height: 65.r,
                        child: Stack(
                          clipBehavior: Clip.hardEdge,
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60.r),
                              child: CachedNetworkImage(
                                  width: 60.r,
                                  height: 60.r,
                                  imageUrl: ref
                                          .watch(getUserById(
                                              widget.project.userId))
                                          .value
                                          ?.imgUrl ??
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
                      GestureDetector(
                        onTap: () {
                          final user = ref
                              .read(getUserById(widget.project.userId))
                              .value;
                          if (user != null) {
                            context.push(GlobalEmpProfilePage.routePath,
                                extra: user);
                          }
                        },
                        child: Text(
                          ref
                                  .watch(getUserById(widget.project.userId))
                                  .value
                                  ?.fullname ??
                              "@username",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.description ?? "-",
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
                      IconButton(
                        onPressed: () async {
                          if (widget.onTapFilter != null) {
                            // await controller.value?.pause();
                            widget.onTapFilter?.call();
                          }
                        },
                        icon: Icon(
                          Icons.filter_alt_outlined,
                          size: 30.sp,
                          color: Colors.white.withOpacity(.8),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () async {
                            if (widget.onTapLike != null) {
                              // await controller.value?.pause();
                              widget.onTapLike?.call();
                            }
                          },
                          child: widget.project.likesUsers?.contains(ref
                                          .read(userAuthNotifer)
                                          .currentUser
                                          ?.id ??
                                      "") ??
                                  false
                              ? Assets.icons.png.loveRed
                                  .image(height: 30.r, width: 30.r)
                              : Assets.icons.png.loveWhite
                                  .image(height: 30.r, width: 30.r)),
                      Text(
                        "${widget.project.likesUsers?.length ?? 0}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                          onTap: () async {
                            if (widget.onTapJobComint != null) {
                              // await controller.value?.pause();
                              widget.onTapJobComint?.call();
                            }
                          },
                          child: Assets.icons.png.comint
                              .image(height: 30.r, width: 30.r)),
                      Text(
                        "50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                          onTap: () async {
                            if (widget.onTapJobMe != null) {
                              // await controller.value?.pause();
                              widget.onTapJobMe?.call();
                            }
                          },
                          child: Assets.icons.png.jobMe
                              .image(height: 30.r, width: 30.r)),
                      Text(
                        "20",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (widget.onTapJobMore != null) {
                            // await controller.value?.pause();
                            widget.onTapJobMore?.call();
                          }
                        },
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: CircleImageAnimation(
                          child: Container(
                            padding: EdgeInsets.all(10.sp),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
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
        ),
      ),
    );
  }
}
