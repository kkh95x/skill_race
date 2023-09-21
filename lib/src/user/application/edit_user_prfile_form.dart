


// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:skill_race/src/user/domain/app_user.dart';
// part 'edit_user_prfile_form.g.dart';

// @Riverpod(keepAlive: true)
// FormGroup editUserProfileForm(EditUserProfileFormRef ref,{required AppUser user}){
//   if(user.accountType==AccountType.employe){
//     return FormGroup({
//       EditUserProfileKeys.imagePath:FormControl<String>(value: user.imgUrl),
//       EditUserProfileKeys.fullname:FormControl<String>(validators: [Validators.required],value: user.fullname),
//       EditUserProfileKeys.birthDay:FormControl<DateTime>(value: user.birthDay),
//       EditUserProfileKeys.specialization:FormControl<String>(value: user.employee?.specialization),
//       EditUserProfileKeys.supSpecialization:FormControl<String>(value: user.employee?.supSpecialization),
//       EditUserProfileKeys.state:FormControl<UserState>(value:user.state),
//     });
//   }else if (user.accountType==AccountType.hiring){
//   return FormGroup({
//    EditUserProfileKeys.imagePath:FormControl<String>(value: user.imgUrl),
//    EditUserProfileKeys.fullname:FormControl<String>(validators: [Validators.required],value: user.fullname),
//    EditUserProfileKeys.state:FormControl<UserState>(value:user.state),
//   });

//   }else{
//     return FormGroup({});
//   }
// }

// class EditUserProfileKeys{
//   EditUserProfileKeys._();
//   static String imagePath="1";
//   static String fullname="2";
//   static String birthDay="2";
//   static String cityName="3";
//   static String countryName="4";
//   static String state="5";
//   static String email="6";
//   static String phoneNumber="7";
//   static String specialization="8";
//   static String supSpecialization="8";


// }