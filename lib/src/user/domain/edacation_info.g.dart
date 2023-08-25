// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edacation_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EdaucationInfo _$$_EdaucationInfoFromJson(Map<String, dynamic> json) =>
    _$_EdaucationInfo(
      name: json['name'] as String,
      unvircety: json['unvircety'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isgraduate: json['isgraduate'] as bool?,
    );

Map<String, dynamic> _$$_EdaucationInfoToJson(_$_EdaucationInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unvircety': instance.unvircety,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isgraduate': instance.isgraduate,
    };
