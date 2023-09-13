import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/employe/domain/employe.dart';
import 'package:skill_race/src/hiring/domain/hiring.dart';
import 'package:skill_race/src/user/domain/certificate_info.dart';
import 'package:skill_race/src/user/domain/edacation_info.dart';
import 'package:skill_race/src/user/domain/archifed/job_info.dart';

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
    DateTime? birthDay,
   required String fullname,
   required AccountType accountType,
    String? password,
    List<String>? interests,//اهتمامات
    String? token,
    
    String? country,
    String? city,
    String? bio,
    String? imgUrl,
    Employee? employee,
    Hiring? hiring
    // List<EdaucationInfo>? educations,
    // String? cvUrl,
    // List<CeritificateInfo>? ceritificates,//شهادات
    // List<String>? language,


    
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, Object?> json)
      => _$AppUserFromJson(json);
}

enum AccountType{
  employe,
  hiring
}