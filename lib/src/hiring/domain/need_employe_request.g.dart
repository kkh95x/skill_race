// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'need_employe_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NeedEmployeeRequest _$$_NeedEmployeeRequestFromJson(
        Map<String, dynamic> json) =>
    _$_NeedEmployeeRequest(
      hiringId: json['hiringId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      state: $enumDecodeNullable(
              _$NeedEmployeedRequestStateEnumMap, json['state']) ??
          NeedEmployeedRequestState.pending,
      companyName: json['companyName'] as String?,
      companyFiled: json['companyFiled'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      exerienceLevel: json['exerienceLevel'] as String?,
      jobType: json['jobType'] as String?,
      specializations: (json['specializations'] as List<dynamic>?)
          ?.map((e) => SingleSpecilazation.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      numberOfEmployees: json['numberOfEmployees'] as int?,
      typeOfTravelVisa: json['typeOfTravelVisa'] as String?,
      workingHours: (json['workingHours'] as num?)?.toDouble(),
      salary: (json['salary'] as num?)?.toDouble(),
      durationMonthOfContract:
          (json['durationMonthOfContract'] as num?)?.toDouble(),
      weekends: json['weekends'] as int?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$_NeedEmployeeRequestToJson(
        _$_NeedEmployeeRequest instance) =>
    <String, dynamic>{
      'hiringId': instance.hiringId,
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'state': _$NeedEmployeedRequestStateEnumMap[instance.state]!,
      'companyName': instance.companyName,
      'companyFiled': instance.companyFiled,
      'country': instance.country,
      'city': instance.city,
      'exerienceLevel': instance.exerienceLevel,
      'jobType': instance.jobType,
      'specializations':
          instance.specializations?.map((e) => e.toJson()).toList(),
      'skills': instance.skills,
      'numberOfEmployees': instance.numberOfEmployees,
      'typeOfTravelVisa': instance.typeOfTravelVisa,
      'workingHours': instance.workingHours,
      'salary': instance.salary,
      'durationMonthOfContract': instance.durationMonthOfContract,
      'weekends': instance.weekends,
      'age': instance.age,
      'gender': instance.gender,
    };

const _$NeedEmployeedRequestStateEnumMap = {
  NeedEmployeedRequestState.pending: 'pending',
  NeedEmployeedRequestState.recived: 'recived',
  NeedEmployeedRequestState.reject: 'reject',
  NeedEmployeedRequestState.complecte: 'complecte',
};
