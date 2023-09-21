



import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
part 'edit_profile_emp_form.g.dart';


@riverpod 
FormGroup editEmpFormProfile(EditEmpFormProfileRef ref ,{required AppUser user}){
  return FormGroup({
      EditUserProfileKeys.imagePath:FormControl<String>(value: null),
      EditUserProfileKeys.imageUrl:FormControl<String>(value: user.imgUrl),

      EditUserProfileKeys.fullname:FormControl<String>(validators: [Validators.required],value: user.fullname),
      EditUserProfileKeys.birthDay:FormControl<DateTime>(value: user.birthDay),
      EditUserProfileKeys.phoneNumber:FormControl<PhoneNumber>(value:user.phone!=null? PhoneNumber.parse(user.phone!):null),
      EditUserProfileKeys.email:FormControl<String>(value: user.email),
      EditUserProfileKeys.specialization:FormControl<String>(value: user.employee?.specialization),
      EditUserProfileKeys.supSpecialization:FormControl<String>(value: user.employee?.supSpecialization),
      EditUserProfileKeys.state:FormControl<UserState>(value:user.state),
      EditUserProfileKeys.countryName:FormControl<String>(value: user.country),
      EditUserProfileKeys.cityName:FormControl<String>(value: user.city),

    }); 
}


class EditUserProfileKeys{
  EditUserProfileKeys._();
  static String imagePath="imagePath";
    static String imageUrl="imageUrl";

  static String fullname="fullname";
  static String birthDay="birthDay";
  static String cityName="cityName";
  static String countryName="countryName";
  static String state="state";
  static String email="email";
  static String phoneNumber="phoneNumber";
  static String specialization="specialization";
  static String supSpecialization="supSpecialization";


}