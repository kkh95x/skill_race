// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/user/domain/price_info.dart';

part 'job_info.freezed.dart';

part 'job_info.g.dart';

@freezed
class JobInfo with _$JobInfo {
  const factory JobInfo({
    List<String>? specialization,//تخصص
    List<String>? skills,
    String? companyName,
    List<String>? tools,
    JopType? jopType,
    PriceInfo? priceInfo,

    
    required int age,
  }) = _JobInfo;

  factory JobInfo.fromJson(Map<String, Object?> json)
      => _$JobInfoFromJson(json);
}
enum JopType{partTime,fullTime}
