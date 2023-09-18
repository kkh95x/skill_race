// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expertise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expertise _$$_ExpertiseFromJson(Map<String, dynamic> json) => _$_Expertise(
      workType: json['workType'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$$_ExpertiseToJson(_$_Expertise instance) =>
    <String, dynamic>{
      'workType': instance.workType,
      'createdAt': instance.createdAt.toIso8601String(),
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'companyName': instance.companyName,
    };
