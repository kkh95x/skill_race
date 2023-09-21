import 'dart:async';
import 'dart:io';
import 'dart:math';

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
import 'package:skill_race/src/user/domain/app_user.dart';
final saveNewPostProvider=FutureProvider.autoDispose.family<void,BuildContext>((ref,context)async {
final user=ref.read(userAuthNotifer).currentUser;
if(user?.accountType==AccountType.employe){
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

    
    final imagesUrl=<String>[];
    String? videoUrl;

  PostProjectType postProjectType;
  if(type==AddPostMediaEnum.images){
    postProjectType=PostProjectType.images;

    for(int i=0;i<images.length;i++){
    final image=images[i];
    final name="${i+10}${now.toIso8601String()}.${image.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("postProject/${user?.id}/images/$name");
     final  task=reff.putFile(File(image));
     final url=await uploade(task, i+1, images.length);
     imagesUrl.add(url);
    }
   
  }else{
    postProjectType=PostProjectType.video;
final name="${now.toIso8601String()}.${video.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("postProject/${user?.id}/video/${Random().nextInt(100)}$name");
     final  task=reff.putFile(File(video));
      videoUrl=await uploade(task, 1, images.length);


  }
  BotToast.showLoading();
  final post=PostProject(title: title,
     description: description,
    videoUrl: videoUrl,
    images: imagesUrl,
      specialization: specialization.name, 
      price: price, createdAt: now,
       userId: user?.id??"", postProjectType: postProjectType);


  await ref.read(postProjectRepositoryProvider).create(post);
  BotToast.closeAllLoading();
  // BotToast.showText(text: "Saved");
  if(context.mounted){
    context.pop();
    
      }
      form.reset();
      ref.read(pageIndexAddNewPost.notifier).state=0;
 BotToast.showWidget(
// allowClick: true,
  
  toastBuilder: (cancelFunc) =>AlertDialog(
  
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
}


});

Future<String> uploade(UploadTask task, int count,int lenght) async{

BotToast.closeAllLoading();

BotToast.showCustomLoading(toastBuilder: (cancelFunc) {
     
      return Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),

        child: Material(
                    borderRadius: BorderRadius.circular(20.r),
      elevation: 9,
           child: Container(
          padding: EdgeInsets.all(50.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: Colors.grey.shade400,
            // boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 0.5,offset: Offset(-1, -1))]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      
              StreamBuilder(
                stream: task.snapshotEvents,
                builder:(context, snapshot)  {
      
                  
                  double uploade=0;
                  if(snapshot.data?.bytesTransferred!=null&&snapshot.data?.totalBytes!=null){
                    uploade=snapshot.data!.bytesTransferred/snapshot.data!.totalBytes;
                  }
                  return Column(
                    children: [
                                  SizedBox(height: 10.h,),
      
                      LinearProgressIndicator(
                        value:  uploade,
                       
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                        Text("$count/$lenght"),
                         Text("${(uploade *100).toInt()}%")
                      ])
                    ],
                  );
                }
              ),
             
            ],
          ),
        )),
      );

    },);
  final url=await task.whenComplete(() => null);
return await url.ref.getDownloadURL();
}