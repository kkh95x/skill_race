




import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/src/employe/domain/looking_job_info.dart';
part 'looking_a_job_form.g.dart';
@Riverpod(keepAlive: true)
FormGroup lookingForAJobForm(LookingForAJobFormRef ref,{LookingForAJob? lookingForAJob})=>FormGroup({
"city":FormControl<String>(value: lookingForAJob?.city),
"price":FormControl<double>(value: lookingForAJob?.price),
"country":FormControl<String>(value: lookingForAJob?.country),
"showNeedJob":FormControl<bool>(value: lookingForAJob?.showLookingJobProfile)

});