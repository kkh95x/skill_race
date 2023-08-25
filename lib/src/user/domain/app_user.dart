import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/user/domain/certificate_info.dart';
import 'package:skill_race/src/user/domain/edacation_info.dart';
import 'package:skill_race/src/user/domain/job_info.dart';
import 'package:skill_race/src/user/domain/price_info.dart';

part 'app_user.freezed.dart';

part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    String? id,
    @Default(true) bool isActive,
    @Default(false) bool isOnline,
    String? phone,
    String? email,
    required DateTime birthDay,
   required String fullname,
    String? password,
    List<String>? interests,//اهتمامات
    String? token,
    JobInfo? jobInfo,
    String? bio,
    String? imgUrl,
    List<EdaucationInfo>? educations,
    String? cvUrl,
    List<CeritificateInfo>? ceritificates,//شهادات
    List<String>? language,


    
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, Object?> json)
      => _$AppUserFromJson(json);
}