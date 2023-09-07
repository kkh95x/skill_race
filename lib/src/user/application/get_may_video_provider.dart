


import 'package:flutter_riverpod/flutter_riverpod.dart';


class VideoData{
  String url;
  String title;
  double starts;
  int price;
  VideoData({required this.starts,required this.title,required this.url,required this.price});

}
final getMyVideosProvider=FutureProvider<List<VideoData>>((ref) {
Future.delayed(const Duration(milliseconds: 200));
return [
  for(int i=0;i<20;i++)
  VideoData(starts: 3, title: "Vidoe$i", url: "https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/Download%20(1).mp4?alt=media&token=9e952105-bf77-41a3-a437-805a452e252b",price: 100+i)
];
});