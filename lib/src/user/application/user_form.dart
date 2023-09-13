
import"package:reactive_forms/reactive_forms.dart";
import "package:reactive_phone_form_field/reactive_phone_form_field.dart";
import 'package:riverpod_annotation/riverpod_annotation.dart';
import "package:skill_race/core/domain/specialization.dart";
import "package:skill_race/src/user/domain/app_user.dart";
part 'user_form.g.dart';


@Riverpod(keepAlive: true)
FormGroup userForm(UserFormRef ref, {AppUser? user})=>FormGroup({
UserFormkeys.accountType:FormControl<AccountType>(validators: [Validators.required]),
UserFormkeys.empForm:FormGroup({
  UserFormkeys.empName.split(".").last:FormControl<String>(validators: [Validators.required]),
  UserFormkeys.empWorkType.split(".").last:FormControl<String>(validators: [Validators.required]),
  UserFormkeys.empSpecialization.split(".").last:FormControl<Specialization>(validators: [Validators.required]),
  UserFormkeys.empSupSpecialization.split(".").last:FormControl<String>(),
  UserFormkeys.empCountry.split(".").last:FormControl<String>(validators: [Validators.required]),

    
   UserFormkeys.empCity.split(".").last:FormControl<String>(validators: [Validators.required]),

}),

UserFormkeys.hiringForm:FormGroup({
   UserFormkeys.hiringName.split(".").last:FormControl<String>(validators: [Validators.required]),
      UserFormkeys.hiringCompanyName.split(".").last:FormControl<String>(validators: [Validators.required]),

    // UserFormkeys.hiringEmail.split(".").last:FormControl<String>(validators: [Validators.email,Validators.required]),
    UserFormkeys.hiringPhoneNumber.split(".").last:FormControl<PhoneNumber>(validators: [Validators.required]),
   UserFormkeys.hiringCountry.split(".").last:FormControl<String>(validators: [Validators.required]),

    
   UserFormkeys.hiringCity.split(".").last:FormControl<String>(validators: [Validators.required]),

})

//   "login":FormGroup({
//     "username":FormControl<String>(validators: [Validators.min(6),Validators.required]),
//     "password":FormControl<String>(validators: [Validators.required,Validators.minLength(8),Validators.pattern(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),

// ]),

//   }),
//     "sginUp":FormGroup({
//       "phone":FormControl<PhoneNumber>(),
//       "email":FormControl<String>(),}),
//      "confirmCode":FormControl<String>(),
//      "enterPassword":FormGroup({
//       "fullname":FormControl<String>(validators: [Validators.required]),
//     "password":FormControl<String>(validators: [Validators.required,Validators.minLength(8),Validators.pattern(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),]),
//       "rePassword":FormControl<String>(validators: [Validators.required,Validators.minLength(8),Validators.pattern(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),]),
//        "see":FormControl<bool>(value: false),
//      },validators: [
//         Validators.mustMatch("password", "rePassword")
//       ]),
//       "Interests":FormControl<List<String>>(),
//       "supInterests":FormControl<List<String>>()


  
});

class UserFormkeys{
  UserFormkeys._();
  static String accountType="accountType";
static String empForm="emp";
static String empName="emp.name";
static String empSpecialization="emp.specialization";
static String empSupSpecialization="emp.supSpecialization";
static String empWorkType="emp.workType";
static String empCountry="emp.country";
static String empCity="emp.city";


static String hiringForm="hiring";
static String hiringName="hiring.hiringName";
// static String hiringEmail="hiring.email";
static String hiringPhoneNumber="hiring.phone";
static String hiringCompanyName="hiring.companyName";
static String hiringCountry="hiring.country";
static String hiringCity="hiring.city";

}