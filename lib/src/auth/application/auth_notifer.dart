






// ignore_for_file: prefer_final_fields

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/application/auth_user_service.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

final userAuthNotifer=StateNotifierProvider<AuthNotifer,AuthState>((ref) => AuthNotifer(ref.read(userServiceProvider)));



class AuthNotifer extends StateNotifier<AuthState>{
  AuthNotifer(this._userService):super(const AuthState(state: AuthStatus.loading)){

   _userService.getUserLocaly().then((userId) {
    print("--->r userId $userId");
      if(userId==null){
        state=const AuthState(state: AuthStatus.unAtuth);
        
      }else{
 _userService.getUserFromCloud(userId).then((user) {
     if(user==null){
      state =const AuthState(state: AuthStatus.unAtuth);
     }
     state=AuthState(state: AuthStatus.auth,currentUser: user,id: user?.id,);

      });

      }
     
    });
}
    
  
UserService _userService;

  // Future sentOtpToEmail(FormGroup formGroup ) async{
  //   final email =formGroup.control("email").value;
  // }
 
  Future<void> sginInWithFacebook()async{
    BotToast.showLoading();
    // final usercredential =await _userService.signInWithFacebook();
    // if(usercredential.user!=null){
    //   final id=usercredential.user?.uid;
    //   debugPrint("---> user facebook info ${usercredential.user}");
    //   state =AuthState(state: AuthStatus.newPasswordEntry,id: id);
    //   BotToast.closeAllLoading();
    //   BotToast.showText(text: "login facbook seccssfully");

    // }else{
      await Future.delayed(const Duration(seconds: 1));
       BotToast.closeAllLoading();
      BotToast.showText(text: "login facbook not support");

    // }

  
  }
Future<void> sginInWithGoogle()async{
  BotToast.showLoading();
  try{
  final usercredential =await _userService.signInWithGoogle();
    if(usercredential.user!=null){
      final email=usercredential.user?.email;
      debugPrint("----> user facebook info ${usercredential.user}");
      final user=await _userService.getUserFromCloud(email??"");
      if(user!=null){
        state =AuthState(state: AuthStatus.auth,id: user.id,email: usercredential.user?.email,fullName:usercredential.user?.displayName );
           _userService.saveUserLocaly(user.id);


      }else{
      state =AuthState(state: AuthStatus.newPasswordEntry,id: user?.id,email: usercredential.user?.email);

      }

      BotToast.closeAllLoading();
      BotToast.showText(text: "login google seccssfully");

    }else{
       BotToast.closeAllLoading();
      BotToast.showText(text: "login google rejected");

    }
  }catch(e){
    // BotToast.showText(text: e.toString());
     BotToast.showText(text: "login google rejected");
  }
   BotToast.closeAllLoading();
}
Future<void> addPasswordName(FormGroup formGroup)async{
  BotToast.showLoading();
 final password=formGroup.control("password").value;
    final fullName=formGroup.control("fullname").value;
   final email=state.email;
   final id=state.id;

  final appUser=AppUser(password:password,fullname: fullName,email:email,id:id );
  // final user=await _userService.createNewUser(appUser);
  debugPrint("create user Seccssfuly ");
  state=AuthState(state: AuthStatus.iterestsEntery,currentUser: appUser,email: email,id: id);
  BotToast.closeAllLoading();
}
Future<void> addInterstsToUserAndCreateIt(FormGroup formGroup)async{
  BotToast.showLoading();
  final interests=formGroup.control("Interests").value;
  final user=state.currentUser?.copyWith(interests: interests);

  final newUser=await _userService.createNewUser(user!);
  await _userService.saveUserLocaly(newUser.id);
  state=AuthState(state: AuthStatus.auth,currentUser: newUser,email: state.email,id: state.id);
  BotToast.closeAllLoading();


}
Future<void> logOut()async{
  BotToast.showLoading();
  final removed= await _userService.sginOut(); 
  if(removed??false){
    BotToast.closeAllLoading();
    state=const AuthState(state: AuthStatus.unAtuth);
  }else{
    BotToast.showText(text: "some thing worng");
  }


}

  void changeState(AuthStatus newState){
    state=AuthState(state: newState);
  }
}