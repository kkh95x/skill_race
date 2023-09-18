import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/src/employe/domain/certificate_info.dart';
import 'package:skill_race/src/employe/domain/education.dart';

part 'education_form.g.dart';

@Riverpod(keepAlive: true)
FormGroup eduicationForm(EduicationFormRef ref, {Education? education})=>FormGroup({
      "schoolLevel":FormControl<String>(validators: [Validators.required],value: education?.schoolLevel),
      "faculaty":FormControl<String>(validators: [Validators.required],value: education?.faculaty),
      "university":FormControl<String>(validators: [Validators.required],value: education?.university),
      "startDate":FormControl<DateTime>(validators: [Validators.required,Validators.max(DateTime.now())],value: education?.startDate),
      "endDate":FormControl<DateTime>(validators: [Validators.required,Validators.max(DateTime.now())],value: education?.endDate),
},validators: [Validators.compare("startDate", "endDate", CompareOption.lowerOrEqual)]);