import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

final videoThumbnail =FutureProvider.family<Uint8List?,String>((ref,url) async{
final uint8list = await VideoThumbnail.thumbnailData(
  video: url,
  imageFormat: ImageFormat.JPEG,
  maxWidth: 128, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
  quality: 100,
);
return uint8list;
});