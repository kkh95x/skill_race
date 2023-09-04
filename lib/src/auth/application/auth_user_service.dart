



import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
 import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:skill_race/src/user/data/app_user_repository.dart';
import 'package:skill_race/src/user/data/firebase_app_user_repository.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_user_service.g.dart';
 


@riverpod
UserService userService(UserServiceRef ref)=>UserService(SharedPreferences.getInstance(),ref.read(userRepositoryProvider)); 

class UserService {
  UserService(this._preferences,this._repository);
  final AppUserRepository _repository;
final Future<SharedPreferences> _preferences;

final _key="dfjsldnflsjdkfklshdf";

Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken?.token??"");

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}
 Future<String?> getUserLocaly()async{
  return (await _preferences).getString(_key);

 } 
  Future<bool?> getIsOnBoardingLoacal()async{
  return (await _preferences).getBool("isB");

 } 
 Future<bool?> sginOut()async{
  (await _preferences).remove("isB");
  await GoogleSignIn().signOut();
  return (await _preferences).remove(_key);

 } 
 
 Future<AppUser?>getUserFromCloud(String email)async{
  return await _repository.getByEmail(email);


 }
Future<AppUser> createNewUser(AppUser appUser)async{
return await _repository.create(appUser);
}

 Future<bool?> saveUserLocaly(String? id)async{
  print("--->r saveUserLocaly $id");
  if(id==null)return null;
  return (await _preferences).setString(_key,id);}

// Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

  // Once signed in, return the UserCredential
  // return await FirebaseAuth.instance.signInWithCredential(credential);
// }

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
}