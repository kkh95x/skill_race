import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'looking_job_info.freezed.dart';

part 'looking_job_info.g.dart';

@freezed
class LookingForAJob with _$LookingForAJob{
  const factory LookingForAJob({
   String? id,
   required String country ,
   required String city,
   required double price,
   required bool showLookingJobProfile,

  }) = _LookingForAJob;

  factory LookingForAJob.fromJson(Map<String, Object?> json)
      => _$LookingForAJobFromJson(json);
}