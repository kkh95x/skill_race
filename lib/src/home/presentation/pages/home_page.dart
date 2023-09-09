import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/video/presentation/components/feeds_component.dart';
import 'package:skill_race/src/posts/presentaion/widgets/post_widget.dart';
const imagesPost=[
  "https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/futurist-thomas-frey-the-difference-between-human-creativity-and-generative-ai-creativity.jpg?alt=media&token=5ad605a6-dd3b-41d0-a908-6aa98a8d4b00",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/hq720.jpg?alt=media&token=270095ea-c84c-49f3-a8ef-aa67fb8e30e8",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/iStock-488078153-830x391.jpg?alt=media&token=72500db2-21f2-4d3c-9590-fffab8ebbf0e",
"https://firebasestorage.googleapis.com/v0/b/skill-race-e16d3.appspot.com/o/1691648895742.png?alt=media&token=97a13375-86c0-4a78-bb05-8bb41052c250"
];


class PostData{
  String username;
  String spacial;
  double starts;
  String picUrl;
  PostType postType;
  List<String> contents;
  PostData({required this.postType, required this.contents,required this.picUrl,required this.spacial,required this.starts,required this.username});
  

}
const imagepic="https://images.nightcafe.studio/jobs/1dg6rpsglt7JUxmlLlau/1dg6rpsglt7JUxmlLlau--1--gck8s.jpg?tr=w-1600,c-at_max";
List<PostData> postsData=[
PostData(contents: [urls[0]], picUrl: imagepic, spacial: "UI/UX Designer", starts: 2.4, username: "Abdul-Karim Khatib",postType: PostType.video),
PostData(contents: imagesPost, picUrl: imagepic, spacial: "UI/UX Designer", starts: 4.5, username: "Ahmed Hassan",postType: PostType.photos),
PostData(contents: [urls[1]], picUrl: imagepic, spacial: "UI/UX Designer", starts: 2.4, username: "Ahmed Hussein",postType: PostType.video),
PostData(contents: imagesPost, picUrl: imagepic, spacial: "UI/UX Designer", starts: 4.5, username: "Ahmed Hassan",postType: PostType.photos),


];

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName=>"user-home";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      appBar: appBarComponent(title: "Home", context: context,showBack: false),
     body:SingleChildScrollView(
      physics:const  AlwaysScrollableScrollPhysics(),
      child:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
        child: Column(children:[
          DynamicButton(
             onPressed: () {
               
             },
             title: "Add New Project",
          ),
          SizedBox(height: 16.h,),

          ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: postsData.length,
            itemBuilder: (context, index) {
           return PostWidget(countents: postsData[index].contents, picUrl: postsData[index].picUrl, price:100, specialization: postsData[index].spacial, starts: postsData[index].starts, postType: postsData[index].postType, username: postsData[index].username,);
          }

        
         ),
         const Divider(),

         Container(
          margin: EdgeInsets.symmetric(vertical: 50.h),
          alignment: Alignment.center,
          child: const Text("- Thats All -"),
         )
        ]),
      )
     )
    
    );
  }
}