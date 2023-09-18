// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CeritificateInfo _$$_CeritificateInfoFromJson(Map<String, dynamic> json) =>
    _$_CeritificateInfo(
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      certificateFrom: json['certificateFrom'] as String?,
    );

Map<String, dynamic> _$$_CeritificateInfoToJson(_$_CeritificateInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'certificateFrom': instance.certificateFrom,
    };
