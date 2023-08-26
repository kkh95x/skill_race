
import"package:reactive_forms/reactive_forms.dart";
import 'package:riverpod_annotation/riverpod_annotation.dart';
import "package:skill_race/src/user/domain/app_user.dart";
part 'user_form.g.dart';


@riverpod
FormGroup userForm(UserFormRef ref, {AppUser? user})=>FormGroup({
  "login":FormGroup({
    "username":FormControl<String>(validators: [Validators.min(6),Validators.required]),
    "password":FormControl<String>(validators: [Validators.required,Validators.minLength(8),Validators.pattern(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),

])
  })
  
});