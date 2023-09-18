// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'looking_job_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LookingForAJob _$$_LookingForAJobFromJson(Map<String, dynamic> json) =>
    _$_LookingForAJob(
      id: json['id'] as String?,
      country: json['country'] as String,
      city: json['city'] as String,
      price: (json['price'] as num).toDouble(),
      showLookingJobProfile: json['showLookingJobProfile'] as bool,
    );

Map<String, dynamic> _$$_LookingForAJobToJson(_$_LookingForAJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'city': instance.city,
      'price': instance.price,
      'showLookingJobProfile': instance.showLookingJobProfile,
    };
