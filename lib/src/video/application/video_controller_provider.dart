import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

final videoControllerProvider=FutureProvider.family<VideoPlayerController,String>((ref,url)async {
final c= VideoPlayerController.networkUrl(Uri.parse(url),);
await c.initialize();
return c;

});


final videoSingleController=FutureProvider.autoDispose.family<VideoPlayerController,String>((ref,url) async{
final c= VideoPlayerController.networkUrl(Uri.parse(url),);
await c.initialize();
return c;

});
final videoPostController=FutureProvider.autoDispose.family<VideoPlayerController,String>((ref,url) async{
final c= VideoPlayerController.networkUrl(Uri.parse(url),);
await c.initialize();
return c;

});