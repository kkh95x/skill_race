// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobInfo _$$_JobInfoFromJson(Map<String, dynamic> json) => _$_JobInfo(
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      companyName: json['companyName'] as String?,
      tools:
          (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
      jopType: $enumDecodeNullable(_$JopTypeEnumMap, json['jopType']),
      priceInfo: json['priceInfo'] == null
          ? null
          : PriceInfo.fromJson(json['priceInfo'] as Map<String, dynamic>),
      age: json['age'] as int,
    );

Map<String, dynamic> _$$_JobInfoToJson(_$_JobInfo instance) =>
    <String, dynamic>{
      'specialization': instance.specialization,
      'skills': instance.skills,
      'companyName': instance.companyName,
      'tools': instance.tools,
      'jopType': _$JopTypeEnumMap[instance.jopType],
      'priceInfo': instance.priceInfo,
      'age': instance.age,
    };

const _$JopTypeEnumMap = {
  JopType.partTime: 'partTime',
  JopType.fullTime: 'fullTime',
};
