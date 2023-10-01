// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:skill_race/core/application/sound_app_player.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/messages/application/floatting_message_notifer.dart';
import 'package:skill_race/src/messages/domain/message.dart';
import 'package:social_media_recorder/audio_encoder_type.dart';
import 'package:social_media_recorder/screen/social_media_recorder.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class MessageButtonsComponent extends ConsumerWidget {
  const MessageButtonsComponent(
      {super.key, this.onContentSend, required this.textController});

  final void Function(String path, MessageType type)? onContentSend;
  final TextEditingController textController;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final floatingState = ref.watch(floatingActionButtonNotifer);
    textController.addListener(() {
      if (textController.text.isNotEmpty) {
        ref
            .read(floatingActionButtonNotifer.notifier)
            .changeState(const FloatingAcionMessageState.onText());
      } else {
        ref
            .read(floatingActionButtonNotifer.notifier)
            .changeState(const FloatingAcionMessageState.onReady());
      }
    });
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 12.w),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Theme.of(context).colorScheme.surface))),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 275.w,
                padding: EdgeInsets.only(left: 16.w),
                child: TextField(
                  expands: false,
                  controller: textController,
                  // readOnly: floatingState ==
                  //     const FloatingAcionMessageState.onVoice(),
                  decoration: InputDecoration(
                      hintText: "Reply",
                      contentPadding: EdgeInsets.all(10.sp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide: BorderSide.none,
                          gapPadding: 10.w),
                      fillColor: Theme.of(context).colorScheme.surface,
                      filled: true),
                ),
              ),
              Visibility(
                visible:
                    floatingState == const FloatingAcionMessageState.onReady(),
                replacement: const SizedBox(),
                child: GestureDetector(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(20.sp),
                          height: 250.h,
                          
                          child: Column(children: [
                            const Text("Send Media"),
                            const Divider(),
                            InkWell(
                              onTap: () {
                                getVideo(context).then((value) => context.pop());
                                 
                              },
                              child: Container(
                                padding: EdgeInsets.all(10.sp),
                                width: MediaQuery.of(context).size.width,
                            
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Icon(Icons.video_collection_outlined),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text("Video"),
                            
                                  ],
                                ),
                              ),
                            ),
                            const Divider(),
                            InkWell(
                              onTap:()async {
                                getImage(context).then((value) =>  context.pop());
                                                               

                              },
                              child: Container(
                                padding: EdgeInsets.all(10.sp),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,

                                  children: [
                                    const Icon(Icons.image),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text("image"),
                                  ],
                                ),
                              ),
                            )
                          ]),
                        );
                      },
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Assets.icons.png.cameraMessage.image()),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Visibility(
              visible:
                  floatingState != const FloatingAcionMessageState.onText(),
              replacement: IconButton(
                onPressed: () {
                  if (onContentSend != null) {
                    onContentSend!(textController.text, MessageType.text);
                  }
                  textController.text = "";
                },
                icon: const Icon(Icons.send),
              ),
              child: SocialMediaRecorder(
                backGroundColor: Colors.white,
                recordIcon: Assets.icons.png.voice.image(),
                recordIconBackGroundColor:
                    Theme.of(context).colorScheme.secondary.withOpacity(.3),
                stopRecording: (time) {
                  print("===========> $time");
                  AppSoundPalyer.stopreRecourdStart();
                  ref
                      .read(floatingActionButtonNotifer.notifier)
                      .changeState(const FloatingAcionMessageState.onReady());
                },
                startRecording: () async {
                  //  if(await Vibrate.canVibrate){
                  //  await Vibrate.vibrateWithPauses([ const Duration(milliseconds: 100)]);
                  //  }
                  AppSoundPalyer.playeRecourdStart();
                  ref
                      .read(floatingActionButtonNotifer.notifier)
                      .changeState(const FloatingAcionMessageState.onVoice());
                },
                sendRequestFunction: (soundFile, str) {
                  //  print("------------>${soundFile} $str");
                  if (onContentSend != null) {
                    onContentSend!(soundFile.path, MessageType.voice);
                  }
                },
                encode: AudioEncoderType.AAC,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> getImage(BuildContext context) async {
    final List<AssetEntity>? result = await AssetPicker.pickAssets(context,
        pickerConfig: AssetPickerConfig(
            requestType: RequestType.image,
            filterOptions: FilterOptionGroup(imageOption: const FilterOption()),
            maxAssets: 1));
    if (result != null) {
      final assets = result.first;

      String? image;
      try {
        final file = await assets.file;
        image = file?.path;
      } catch (e) {}

      if (image == null) {
        return;
      }
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: image,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio16x9,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio7x5
        ],
        compressFormat: ImageCompressFormat.png,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: Theme.of(context).colorScheme.primary,
              toolbarWidgetColor: Theme.of(context).colorScheme.onPrimary,
              initAspectRatio: CropAspectRatioPreset.original,
              activeControlsWidgetColor:
                  Theme.of(context).colorScheme.secondary,
              lockAspectRatio: false),
          IOSUiSettings(
            minimumAspectRatio: 1.5,
            rotateButtonsHidden: true,
            aspectRatioLockDimensionSwapEnabled: true,
            showActivitySheetOnDone: true,
            title: 'Cropper',
          ),
          WebUiSettings(
            enableResize: true,
            enableOrientation: true,
            enableZoom: true,
            context: context,
            customDialogBuilder: (cropper, crop, rotate) =>
                Dialog(child: Builder(builder: (context) {
              return Container(
                width: 600,
                padding: const EdgeInsets.only(
                    right: 10, left: 10, top: 10, bottom: 10),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: cropper,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            /// it is important to call crop() function and return
                            /// result data to plugin, for example:
                            await crop().then(
                                (value) => Navigator.of(context).pop(value));
                          },
                          child: const Text('قص الصورة'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.error)),
                          onPressed: () async {
                            /// it is important to call crop() function and return
                            /// result data to plugin, for example:
                            Navigator.of(context).pop(null);
                          },
                          child: const Text('إلغاء'),
                        ),
                      ],
                    ),
                  )
                ]),
              );
            })),
          ),
        ],
      );

      if (croppedFile?.path.isNotEmpty ?? false) {
        croppedFile!.path;
        if (onContentSend != null) {
          onContentSend!(croppedFile.path, MessageType.image);
        }

        // widget.onChange?.call(croppedFile);
        // setState(() {});
      } else {
        // print(image.path);
      }
    }
  }

  Future<void> getVideo(BuildContext context) async {
    final List<AssetEntity>? result = await AssetPicker.pickAssets(context,
        pickerConfig: AssetPickerConfig(
            requestType: RequestType.video,
            filterOptions: FilterOptionGroup(
                videoOption: const FilterOption(
                    durationConstraint:
                        DurationConstraint(max: Duration(seconds: 60)))),
            maxAssets: 1));
    if (result != null) {
      final path = await result.first.file;
     if(onContentSend!=null&&path?.path!=null){
      onContentSend!(path!.path,MessageType.video);
     }
    }
  }


}
