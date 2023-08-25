// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationInfo _$$_LocationInfoFromJson(Map<String, dynamic> json) =>
    _$_LocationInfo(
      country: json['country'] as String,
      city: json['city'] as String?,
      street: json['street'] as String?,
      office: json['office'] as String?,
      age: json['age'] as int,
    );

Map<String, dynamic> _$$_LocationInfoToJson(_$_LocationInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'office': instance.office,
      'age': instance.age,
    };
