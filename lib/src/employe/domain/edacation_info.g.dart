// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edacation_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EdaucationInfo _$$_EdaucationInfoFromJson(Map<String, dynamic> json) =>
    _$_EdaucationInfo(
      schoole: json['schoole'] as String?,
      faculty: json['faculty'] as String?,
      university: json['university'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$_EdaucationInfoToJson(_$_EdaucationInfo instance) =>
    <String, dynamic>{
      'schoole': instance.schoole,
      'faculty': instance.faculty,
      'university': instance.university,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
