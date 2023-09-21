


 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/employe/domain/certificate_info.dart';
import 'package:skill_race/src/employe/domain/education.dart';
import 'package:skill_race/src/employe/domain/expertise.dart';
import 'package:skill_race/src/employe/domain/looking_job_info.dart';

part 'employe.freezed.dart';

part 'employe.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    String? specialization,//تخصص
    String? supSpecialization,
    DateTime? lastEditSpecialization,
    String? jobType,
    List<CeritificateInfo>? ceritificates,//شهادات
    List<String>? language,
    List<Expertise>? expertises,
    List<String>? skills,
    List<Education>? educations,
    LookingForAJob? lookingForAJob
  }) = _Employee;

  factory Employee.fromJson(Map<String, Object?> json)
      => _$EmployeeFromJson(json);
}