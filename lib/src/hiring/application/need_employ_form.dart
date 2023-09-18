

import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/core/domain/specialization.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/hiring/domain/single_specialization.dart';

part 'need_employ_form.g.dart';

@Riverpod(keepAlive: true)
FormGroup addNeedEmployeForm(AddNeedEmployeFormRef ref)=>FormGroup({
"companyName":FormControl<String>(value: ref.read(userAuthNotifer).currentUser?.hiring?.companyName),
"companyField":FormControl<String>(),
"country":FormControl<String>(),
"city":FormControl<String>(),

"specializationList":FormControl<List<SingleSpecilazation>>(),
"specialization":FormControl<Specialization>(),
"subSpecialization":FormControl<String>(),
"exerienceLevel":FormControl<String>(),
"jobType":FormControl<String>(),
"skills":FormControl<List<String>>(),


"numberOfEmployees":FormControl<int>(),
"typeOfTravelVisa":FormControl<String>(),
"workingHours":FormControl<double>(),
"salary":FormControl<double>(),
"durationOfTheContract":FormControl<double>(),
"weekends":FormControl<int>(),
"age":FormControl<int>(),
"gender":FormControl<String>(),


});