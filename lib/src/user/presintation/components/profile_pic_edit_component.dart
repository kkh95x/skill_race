// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter/material.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import "package:cached_network_image/cached_network_image.dart";


class ProfilePicWidget extends ConsumerStatefulWidget {
  const ProfilePicWidget({super.key, this.imagUrl, this.onChange, });
  final void Function(CroppedFile image)? onChange;
  final String? imagUrl;

  @override
  ConsumerState<ProfilePicWidget> createState() => _ProfilePicWidgetState();
}

class _ProfilePicWidgetState extends ConsumerState<ProfilePicWidget> {
  String? _imagePath;

  @override
  void initState() {
    _imagePath;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132.r,
      width: 132.r,
      child: Stack(
        children: [
          buildImage(),
       
          Positioned(
            right: 2.w,
            bottom: 2.h,
            child: GestureDetector(
              onTap: () async => await getImage( context),
              child: Container(
              
                height: 32.r,
                width: 32.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary])
                  
                ),
                child: Assets.icons.png.camera.image(),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Future<void> getImage( BuildContext context) async {
 final List<AssetEntity>? result =
                                        await AssetPicker.pickAssets(context,
                                            pickerConfig: AssetPickerConfig(
                                                requestType: RequestType.image,
                                                filterOptions: FilterOptionGroup(
                                              
                                                    imageOption:
                                                        const FilterOption(
                                                          
                                                        )),
                                                maxAssets: 1));
                                    if (result != null) {
                                      final assets=result.first;
                                     
                                    String? image;
                                    try{ 
                                       final file=await assets.file;
                                      image =
                                            file?.path;
                                     

                                    }catch(e){
                                    }
                                        
                                   if (image == null) {
      return;
    }
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
       
      ],
      compressFormat: ImageCompressFormat.png,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor:Theme.of(context).colorScheme.primary,
            toolbarWidgetColor:Theme.of(context).colorScheme.onPrimary,
            initAspectRatio: CropAspectRatioPreset.original,
            activeControlsWidgetColor:Theme.of(context).colorScheme.secondary ,
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
          customDialogBuilder: (cropper, crop, rotate) => Dialog(
              child: Builder(builder: (context) {
                return Container(
                  width: 600,
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                  
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
                              await crop().then((value) => Navigator.of(context).pop(value));
                            },
                            child: const Text('قص الصورة'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.error)),
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
      _imagePath = croppedFile!.path;

      widget.onChange?.call(croppedFile);
      setState(() {});
    } else {
      // print(image.path);
    }
                                      }
                                     
                                     
                                      
                                    }
    
  
  Widget buildImage() {
    if (kIsWeb) {
      if (widget.imagUrl != null && _imagePath == null) {
        return CircleAvatar(
          radius: 65.r,
          backgroundImage: CachedNetworkImageProvider(widget.imagUrl!),
        );
      }
      if (_imagePath == null) {
        return CircleAvatar(
          radius: 70.0.r,
         backgroundImage: const CachedNetworkImageProvider("https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"),
        );
      }

      if (_imagePath != null) {
        return CircleAvatar(
          radius: 65.r,
          backgroundImage: NetworkImage(_imagePath!),
        );
      }
    } else {
      if (widget.imagUrl != null && _imagePath == null) {
        return CircleAvatar(
          radius: 65.r,
          backgroundImage: CachedNetworkImageProvider(widget.imagUrl!),
        );
      }
      if (_imagePath == null) {
        // return Image.asset(
        //   "assets/png/profile_empty.png",
        //   height: 130.r,
        //   width: 130.r,
        //   fit: BoxFit.fill,
        // );
        return CircleAvatar(
          radius: 70.0.r,
         backgroundImage: const CachedNetworkImageProvider("https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1dg6rpsglt7JUxmlLlau--1--gck8s.webp?alt=media&token=53b85936-706b-4594-aca6-389225c7a465"),
        );
      }

      if (_imagePath != null) {
        return CircleAvatar(
          radius: 65.r,
          backgroundImage: FileImage(File(_imagePath!)),
        );
      }
    }
    return const SizedBox();
  }
}
