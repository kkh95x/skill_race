

import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'need_employ_form.g.dart';

@riverpod
FormGroup addEmployeForm(AddEmployeFormRef ref)=>FormGroup({
"companyName":FormControl<String>(),
"companyField":FormControl<String>(),
"country":FormControl<String>(),
"city":FormControl<String>(),
"specialization":FormControl<String>(),
"subSpecialization":FormControl<String>(),
"exerienceLevel":FormControl<String>(),
"jobType":FormControl<String>(),
"numberOfEmployees":FormControl<int>(),
"typeOfTravelVisa":FormControl<String>(),
"workingHours":FormControl<double>(),
"salary":FormControl<double>(),
"durationOfTheContract":FormControl<double>(),
"weekends":FormControl<int>(),
"age":FormControl<int>(),
"gender":FormControl<String>(),


});