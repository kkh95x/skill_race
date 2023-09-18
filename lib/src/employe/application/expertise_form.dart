import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/src/employe/domain/expertise.dart';

part 'expertise_form.g.dart';


@Riverpod(keepAlive: true)
FormGroup expertiseForm(ExpertiseFormRef ref, {Expertise? expertise})=>FormGroup({
   "workType":FormControl<String>(validators: [Validators.required],value: expertise?.workType),
      "companyName":FormControl<String>(validators: [Validators.required],value: expertise?.companyName),
      "startDate":FormControl<DateTime>(validators: [Validators.required,Validators.max(DateTime.now())],value: expertise?.startDate),
      "endDate":FormControl<DateTime>(validators: [Validators.required,Validators.max(DateTime.now())],value: expertise?.endDate,),
},validators: [Validators.compare("startDate", "endDate", CompareOption.lowerOrEqual)]);