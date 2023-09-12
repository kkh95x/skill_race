
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/domain/specialization.dart';
part 'new_project_form.g.dart';

@Riverpod(keepAlive: true)
FormGroup newProjectFrom(NewProjectFromRef ref)=>FormGroup({
  NewProjectKeys.title:FormControl<String>(validators: [Validators.required],value: null),
  NewProjectKeys.listImages:FormControl<List<String>>(value: null),
  NewProjectKeys.video:FormControl<String>(),
  NewProjectKeys.specialization:FormControl<Specialization>(validators: [Validators.required],value: null),
  NewProjectKeys.subSpecialization:FormControl<String>(),
  NewProjectKeys.price:FormControl<double>(validators: [Validators.required],value: 10),
  NewProjectKeys.description:FormControl<String>(validators: [Validators.required],value: null),
  NewProjectKeys.addPostMediaType:FormControl<AddPostMediaEnum>(value: AddPostMediaEnum.nulling)
});
class NewProjectKeys{
  NewProjectKeys._();
  static String title="1";
  static String listImages="2";
  static String video="3";
  static String specialization="4";
  static String subSpecialization="5";
  static String tools="6";
  static String price="7";
  static String description="8";
  static String skills="9";
  static String addPostMediaType="10";
}
enum AddPostMediaEnum{nulling,video,images}
