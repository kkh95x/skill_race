


import 'dart:io';
import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/application/speicaization_provider.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/edit_profile_emp_form.dart';
import 'package:skill_race/src/project/application/save_new_post_provider.dart';
import 'package:skill_race/src/user/application/is_user_can_edit_profile_provider.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import "package:flutter/material.dart";
   class EditEmpProfileProvider{
    FormGroup formGroup;
    BuildContext context;
EditEmpProfileProvider({required this.context,required this.formGroup});
   }
final editEmpProfileProvider=FutureProvider.autoDispose.family<void,EditEmpProfileProvider>((ref,input) async{
  final formGroup=input.formGroup;
  final context=input.context;
  final birthDay=formGroup.control(EditUserProfileKeys.birthDay).value as DateTime?;
  final imagePath=formGroup.control(EditUserProfileKeys.imagePath).value as String?;
  final imageOldUrl=formGroup.control(EditUserProfileKeys.imageUrl).value as String?;

  final supecilzation=formGroup.control(EditUserProfileKeys.specialization).value as String?;
  final supSpecilzation=formGroup.control(EditUserProfileKeys.supSpecialization).value as String?;
  final country=formGroup.control(EditUserProfileKeys.countryName).value as String?;
  final city=formGroup.control(EditUserProfileKeys.cityName).value as String?;
  final state=formGroup.control(EditUserProfileKeys.state).value as UserState;
  final name=formGroup.control(EditUserProfileKeys.fullname).value;
  if(supecilzation==null||city==null||country==null||name==null){
    BotToast.showText(text: "Please make sure to enter all fields");
    return;
  }
  final specilaizations=await ref.read(specializationProvider.future);
  final spec=specilaizations.singleWhere((element) => element.name==supecilzation);
  if(spec.subSpecialization.isNotEmpty && supSpecilzation==null){
        BotToast.showText(text: "Please make sure to enter all fields");

  }

  String? imagUrl;
  final user=ref.read(userAuthNotifer).currentUser;

  if(imagePath!=null){
    final name="${DateTime.now().toIso8601String()}.${imagePath.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("profiles/${user?.id??"null"}/pic/${Random().nextInt(100)}$name");
     final  task=reff.putFile(File(imagePath));
      imagUrl=await uploade(task, 1,1);
  }

BotToast.showLoading();
 


  if(user?.fullname==name){
    await ref.read(userAuthNotifer.notifier).updateUser(user!.copyWith(
      birthDay: birthDay,
      state: state,
      imgUrl: imagUrl??imageOldUrl,
      city: city,
      country: country,      
      employee: user.employee?.copyWith(specialization: supecilzation,supSpecialization: supSpecilzation)));
      BotToast.closeAllLoading();
if(context.mounted){
context.pop();}
    formGroup.reset();

  }else{
      final isUserCanChangeName=ref.read(isUserCanEditName(user!));

    if(isUserCanChangeName){
       await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(
      birthDay: birthDay,
      state: state,
      fullname: name,
      imgUrl: imagUrl??imageOldUrl,

      lastEdtiName: DateTime.now(),
      city: city,
      country: country,      
      employee: user.employee?.copyWith(specialization: supecilzation,supSpecialization: supSpecilzation)));
BotToast.closeAllLoading();

if(context.mounted){
context.pop();}
    formGroup.reset();

    }else{
      BotToast.showText(text: "User Cant Uptade Now Please Try Later");
      return;

    }
  }

  



});