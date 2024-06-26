import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/employe/domain/employe.dart';
import 'package:skill_race/src/hiring/domain/hiring.dart';

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
   @Default(UserState.avalible) UserState state,
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
    Hiring? hiring,
    DateTime? lastEdtiName,
    
    // List<EdaucationInfo>? educations,
    // String? cvUrl,
  

    
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, Object?> json)
      => _$AppUserFromJson(json);
}

enum AccountType{
  employe,
  hiring
}

enum UserState{
  avalible,away,inWeekend,busy
}

extension ConvertState on UserState{
  String toScreen(){
    switch (this) {
      
    
      case UserState.avalible:
        return "Available Now";
        
      case UserState.away:
        return "Away";
      case UserState.inWeekend:
        return "In Weekend";
      case UserState.busy:
        return "Busy";
    }
  }
  Color toColor(){
    switch (this) {
      
    
      case UserState.avalible:
        return Colors.green;
        
      case UserState.away:
        return Colors.orange;
      case UserState.inWeekend:
        return Colors.grey;
        case UserState.busy:
        return Colors.red;
    }
  }
}