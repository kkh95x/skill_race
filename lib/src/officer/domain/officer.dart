

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_race/src/officer/domain/officer_state.dart';
part 'officer.g.dart';
part 'officer.freezed.dart';

@freezed
abstract class Officer with _$Officer{
  factory Officer({
    String? id,
  required  String title,
  required double price,
  DateTime? deadLine,
  String? description,
  required OfficerState currentStatus,
 List<OfficerState>? status,
 String? link,
 required String hiringId,
 required DateTime createAt,
 required DateTime updateAt,
 required String employeeId


  })=_Officer;
  factory Officer.fromJson(Map<String, Object?> json )=>_$OfficerFromJson(json);
}