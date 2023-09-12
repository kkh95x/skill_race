// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Specialization _$$_SpecializationFromJson(Map<String, dynamic> json) =>
    _$_Specialization(
      name: json['name'] as String,
      subSpecialization: (json['subSpecialization'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SpecializationToJson(_$_Specialization instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subSpecialization': instance.subSpecialization,
    };
