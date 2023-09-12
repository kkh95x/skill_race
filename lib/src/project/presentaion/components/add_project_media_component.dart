import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/src/project/application/new_project_form.dart';
import 'package:skill_race/src/video/application/video_thumbnail_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class AddProjectMediaComponent extends ConsumerWidget {
  const AddProjectMediaComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formGroup = ref.read(newProjectFromProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            children: [Text("Upload Images or Video")],
          ),
          Container(
            constraints: BoxConstraints(minHeight: 500.h, maxHeight: 600.h),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.sp),
            margin: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                borderRadius: BorderRadius.circular(20.r)),
            child: ReactiveFormConsumer(
              builder: (context, ref, child) {
                final state = formGroup
                    .control(NewProjectKeys.addPostMediaType)
                    .value as AddPostMediaEnum? ??AddPostMediaEnum.nulling;
                if (state == AddPostMediaEnum.nulling) {
                  return Center(
                      child: GestureDetector(
                    onTap: () async {
//

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                Text(
                                  "Upload Media",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiaryContainer),
                                ),
                                const Divider()
                              ],
                            ),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final List<AssetEntity>? result =
                                        await AssetPicker.pickAssets(context,
                                            pickerConfig: AssetPickerConfig(
                                                requestType: RequestType.video,
                                                filterOptions: FilterOptionGroup(
                                                    videoOption: const FilterOption(
                                                        durationConstraint:
                                                            DurationConstraint(
                                                                max: Duration(
                                                                    seconds:
                                                                        60)))),
                                                maxAssets: 1));
                                    if (result != null) {
                                      formGroup
                                              .control(NewProjectKeys.video)
                                              .value =
                                          ((await result.first.file)?.path);
                                      formGroup
                                          .control(
                                              NewProjectKeys.addPostMediaType)
                                          .value = AddPostMediaEnum.video;

                                      if (context.mounted) {
                                        context.pop();
                                      }
                                    }
                                  },
                                  child: Container(
                                      width: 90.w,
                                      margin: EdgeInsets.all(10.sp),
                                      padding: EdgeInsets.all(10.sp),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                            strokeAlign: 10,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.r)),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.video_collection_outlined,
                                            size: 35.sp,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimaryContainer,
                                          ),
                                          const Text("Video")
                                        ],
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final List<AssetEntity>? result =
                                        await AssetPicker.pickAssets(context,
                                            pickerConfig: AssetPickerConfig(
                                                requestType: RequestType.image,
                                                filterOptions: FilterOptionGroup(
                                                    imageOption:
                                                        const FilterOption()),
                                                maxAssets: 6));
                                    if (result != null) {
                                      List<String> pathes = [];
                                      for (var image in result) {
                                        final imPAth =
                                            (await (image.file))?.path;
                                        if (imPAth != null) {
                                          pathes.add(imPAth);
                                        }
                                      }
                                      formGroup
                                          .control(NewProjectKeys.listImages)
                                          .value = pathes;
                                      formGroup
                                          .control(
                                              NewProjectKeys.addPostMediaType)
                                          .value = AddPostMediaEnum.images;
                                      if (context.mounted) {
                                        context.pop();
                                      }
                                    }
                                  },
                                  child: Container(
                                      width: 90.w,
                                      margin: EdgeInsets.all(10.sp),
                                      padding: EdgeInsets.all(10.sp),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                            strokeAlign: 10,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.r)),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.image_outlined,
                                            size: 35.sp,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimaryContainer,
                                          ),
                                          const Text("Images")
                                        ],
                                      )),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.cloud_upload_outlined,
                          size: 35.sp,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        Text(
                          "Upload Media",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer),
                        )
                      ],
                    ),
                  ));
                } else if (state == AddPostMediaEnum.video) {
                  return Consumer(
                    builder: (context, ref, child) {
                      final va = ref.watch(_videoAssest(
                          formGroup.control(NewProjectKeys.video).value));
                      return va.when(
                        data: (data) {
                          return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: VisibilityDetector(
                                key: UniqueKey(),
                                onVisibilityChanged: (info) {
                                  if (info.visibleFraction == 0) {
                                    data.pause();
                                  }
                                },
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        child: GestureDetector(
                                            onTap: () {
                                              if (data.value.isPlaying) {
                                                data.pause();
                                              } else {
                                                data.play();
                                              }
                                            },
                                            child: VideoPlayer(data)),
                                      ),
                                    ),
                                    Positioned(
                                        top: 5.h,
                                        right: 5.w,
                                        child: GestureDetector(
                                          onTap: () {
                                            formGroup
                                                .control(NewProjectKeys.video)
                                                .value = null;
                                            formGroup
                                                    .control(NewProjectKeys
                                                        .addPostMediaType)
                                                    .value =
                                                AddPostMediaEnum.nulling;
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white),
                                                color: Colors.black,
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              Icons.remove,
                                              size: 25.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ));
                          // if(data==null){
                          //   return Text("Error: Video not supported");
                          // }
                          // return Image.memory(data);
                        },
                        error: (error, stackTrace) => Center(
                          child: Text("Error: ${error.toString()}"),
                        ),
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  );
                } else if (state == AddPostMediaEnum.images) {
                  return Wrap(
                    children: [
                      ...(formGroup.control(NewProjectKeys.listImages).value
                              as List<String>)
                          .map((e) => Stack(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(10.sp),
                                      constraints:
                                          BoxConstraints(minHeight: 100.h),
                                      width: 100.w,
                                      // height: ,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          child: Image.file(
                                            File(e),
                                            fit: BoxFit.cover,
                                          ))),
                                  Positioned(
                                      top: 5.h,
                                      right: 5.w,
                                      child: GestureDetector(
                                        onTap: () {
                                          final old = formGroup
                                                  .control(
                                                      NewProjectKeys.listImages)
                                                  .value as List<String>? ??
                                              [];
                                          old.remove(e);
                                          if(old.isEmpty){
                                            formGroup
                                              .control(
                                                  NewProjectKeys.addPostMediaType).value=AddPostMediaEnum.nulling;
                                          }
                                          formGroup
                                              .control(
                                                  NewProjectKeys.listImages)
                                              .value = [...old];
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white),
                                              color: Colors.black,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.remove,
                                            size: 25.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))
                                ],
                              ))
                          .toList(),
                      if ((formGroup.control(NewProjectKeys.listImages).value
                                      as List<String>? ??
                                  [])
                              .length <
                          6)
                        GestureDetector(
                          onTap: () async {
                            final List<AssetEntity>? result =
                                await AssetPicker.pickAssets(context,
                                    pickerConfig: AssetPickerConfig(
                                        requestType: RequestType.image,
                                        filterOptions: FilterOptionGroup(
                                            imageOption: const FilterOption()),
                                        maxAssets: 6 -
                                            (formGroup
                                                            .control(
                                                                NewProjectKeys
                                                                    .listImages)
                                                            .value
                                                        as List<String>? ??
                                                    [])
                                                .length));
                            if (result != null) {
                              List<String> pathes = [];
                              for (var image in result) {
                                final imPAth = (await (image.file))?.path;
                                if (imPAth != null) {
                                  pathes.add(imPAth);
                                }
                              }
                              final old = formGroup
                                  .control(NewProjectKeys.listImages)
                                  .value as List<String>;

                              formGroup
                                  .control(NewProjectKeys.listImages)
                                  .value = [...old, ...pathes];
                              formGroup
                                  .control(NewProjectKeys.addPostMediaType)
                                  .value = AddPostMediaEnum.images;
                            }
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.sp),
                              alignment: Alignment.center,
                              width: 100.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Icon(
                                Icons.add,
                                size: 30.sp,
                              )),
                        ),
                    ],
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

final _videoAssest = FutureProvider.autoDispose
    .family<VideoPlayerController, String>((ref, path) async {
  final c = VideoPlayerController.file(File(path));
  await c.initialize();
  c.play();
  return c;
});
