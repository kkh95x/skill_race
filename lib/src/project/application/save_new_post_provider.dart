import 'dart:async';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/core/domain/specialization.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/project/application/new_project_form.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/project/domain/project.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:skill_race/src/project/presentaion/pages/add_new_project_page.dart';
final saveNewPostProvider=FutureProvider.autoDispose.family<void,BuildContext>((ref,context)async {

  final form=ref.read(newProjectFromProvider);
  if(!form.valid){
    BotToast.showText(text: "Please Enter All Fildes First");
    return;

  }

  final title=form.control(NewProjectKeys.title).value;
  final description=form.control(NewProjectKeys.description).value;
  final images=form.control(NewProjectKeys.listImages).value as List<String>? ??[];
  final price=form.control(NewProjectKeys.price).value;
  final specialization=form.control(NewProjectKeys.specialization).value as Specialization;
  final supSpecialization=form.control(NewProjectKeys.subSpecialization).value;
  final video=form.control(NewProjectKeys.video).value;
  final type=form.control(NewProjectKeys.addPostMediaType).value as AddPostMediaEnum;
  if(type==AddPostMediaEnum.nulling){
    BotToast.showText(text: "Please add Media First");
    return;
  }
  if(specialization.subSpecialization.isNotEmpty){
    if(supSpecialization==null && !specialization.subSpecialization.contains(supSpecialization)){
      BotToast.showText(text: "Please add Sup Specialization First");
      return;
    }
  
  }
    final now=DateTime.now();

    PostProject post=PostProject(title: title, description: description, specialization: specialization.name, price: price, createdAt: now, userId: ref.read(userAuthNotifer).currentUser?.id??"", postProjectType: PostProjectType.images);

  PostProjectType postProjectType;
  if(type==AddPostMediaEnum.images){
    postProjectType=PostProjectType.images;
    final urls=<String>[];

    for(int i=0;i<images.length;i++){
    final image=images[i];
    final name="${now.toIso8601String()}.${image.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("postProject/${ref.read(userAuthNotifer).currentUser?.id}/images/$name");
     final  task=reff.putFile(File(image));
     final url=await uploade(task, i+1, images.length);
     urls.add(url);
    }
    post=post.copyWith(postProjectType: postProjectType,images: urls);
   
  }else{
    postProjectType=PostProjectType.video;
final name="${now.toIso8601String()}.${video.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("postProject/${ref.read(userAuthNotifer).currentUser?.id}/video/$name");
     final  task=reff.putFile(File(video));
     final url=await uploade(task, 1, images.length);
         post=post.copyWith(postProjectType: postProjectType,videoUrl: url);


  }
  BotToast.showLoading();
  await ref.read(postProjectRepositoryProvider).create(post);
  BotToast.closeAllLoading();
  // BotToast.showText(text: "Saved");
  if(context.mounted){
    context.pop();
    
      }
      form.reset();
      ref.read(pageIndexAddNewPost.notifier).state=0;
 BotToast.showWidget(toastBuilder: (cancelFunc) =>AlertDialog(
  
  content: GestureDetector(
    onTap: cancelFunc,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.png.alertAddProject.image(),
        const Text("Your Project has been succesfully added.",textAlign: TextAlign.center,)
      ],
    ),
  ),
 ) ,);



});

Future<String> uploade(UploadTask task, int count,int lenght) async{

BotToast.closeAllLoading();

BotToast.showCustomLoading(toastBuilder: (cancelFunc) {
     
      return Container(
        padding: EdgeInsets.all(50.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.grey.shade400
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.h,),

            StreamBuilder(
              stream: task.snapshotEvents,
              builder:(context, snapshot)  {

                
                double uploade=0;
                if(snapshot.data?.bytesTransferred!=null&&snapshot.data?.totalBytes!=null){
                  uploade=snapshot.data!.bytesTransferred/snapshot.data!.totalBytes;
                }
                return LinearProgressIndicator(
                  value:  uploade,
                 
                );
              }
            ),
            Text("$lenght/$count")
          ],
        ),
      );

    },);
  final url=await task.whenComplete(() => null);
return await url.ref.getDownloadURL();
}