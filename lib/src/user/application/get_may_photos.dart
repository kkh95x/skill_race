


import 'package:flutter_riverpod/flutter_riverpod.dart';


class PhotosData{
  String url;
  String title;
  double starts;
  int price;
  PhotosData({required this.starts,required this.title,required this.url,required this.price});

}
final getMyPhotosProvider=FutureProvider<List<PhotosData>>((ref) {
Future.delayed(const Duration(milliseconds: 200));
return [
  for(int i=0;i<20;i++)
  PhotosData(starts: 3, title: "Project$i", url:  "https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/futurist-thomas-frey-the-difference-between-human-creativity-and-generative-ai-creativity.jpg?alt=media&token=5ad605a6-dd3b-41d0-a908-6aa98a8d4b00",price: 100+i)
];
});