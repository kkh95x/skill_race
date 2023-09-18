// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
      specialization: json['specialization'] as String?,
      supSpecialization: json['supSpecialization'] as String?,
      jobType: json['jobType'] as String?,
      ceritificates: (json['ceritificates'] as List<dynamic>?)
          ?.map((e) => CeritificateInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      expertises: (json['expertises'] as List<dynamic>?)
          ?.map((e) => Expertise.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      lookingForAJob: json['lookingForAJob'] == null
          ? null
          : LookingForAJob.fromJson(
              json['lookingForAJob'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
      'specialization': instance.specialization,
      'supSpecialization': instance.supSpecialization,
      'jobType': instance.jobType,
      'ceritificates': instance.ceritificates?.map((e) => e.toJson()).toList(),
      'language': instance.language,
      'expertises': instance.expertises?.map((e) => e.toJson()).toList(),
      'skills': instance.skills,
      'educations': instance.educations?.map((e) => e.toJson()).toList(),
      'lookingForAJob': instance.lookingForAJob?.toJson(),
    };
