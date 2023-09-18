import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/src/employe/domain/certificate_info.dart';

part 'certificate_form.g.dart';


@Riverpod(keepAlive: true)
FormGroup ceritificateForm(CeritificateFormRef ref, {CeritificateInfo? ceritificateInfo})=>FormGroup({
   "name":FormControl<String>(validators: [Validators.required],value: ceritificateInfo?.name),
      "from":FormControl<String>(validators: [Validators.required],value: ceritificateInfo?.certificateFrom),
      "startDate":FormControl<DateTime>(validators: [Validators.required,Validators.max(DateTime.now())],value: ceritificateInfo?.startDate),
      "endDate":FormControl<DateTime>(validators: [Validators.required,Validators.max(DateTime.now())],value: ceritificateInfo?.endDate),
      "createdAt":FormControl<DateTime>(value: ceritificateInfo?.createdAt)
},validators: [Validators.compare("startDate", "endDate", CompareOption.lowerOrEqual)]);