import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/employe/domain/certificate_info.dart';
import 'package:skill_race/src/employe/domain/expertise.dart';
import 'package:skill_race/src/employe/domain/skill.dart';

part 'education.freezed.dart';

part 'education.g.dart';

@freezed
class Education with _$Education {
  const factory Education({
  required String schoolLevel,
   required String faculaty,
   required String university,
   required DateTime startDate,
   required DateTime endDate,
   required DateTime createdAt,

  }) = _Education;

  factory Education.fromJson(Map<String, Object?> json)
      => _$EducationFromJson(json);
}