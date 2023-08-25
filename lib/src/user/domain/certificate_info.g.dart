// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CeritificateInfo _$$_CeritificateInfoFromJson(Map<String, dynamic> json) =>
    _$_CeritificateInfo(
      name: json['name'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      trainedEntity: json['trainedEntity'] as String?,
    );

Map<String, dynamic> _$$_CeritificateInfoToJson(_$_CeritificateInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date?.toIso8601String(),
      'trainedEntity': instance.trainedEntity,
    };
