import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

final videoController=FutureProvider.family<VideoPlayerController,String>((ref,url) async{
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