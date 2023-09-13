


 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'employe.freezed.dart';

part 'employe.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    String? specialization,//تخصص
    String? supSpecialization,
    String? jobType,
  }) = _Employee;

  factory Employee.fromJson(Map<String, Object?> json)
      => _$EmployeeFromJson(json);
}