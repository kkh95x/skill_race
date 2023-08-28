// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      id: json['id'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      isOnline: json['isOnline'] as bool? ?? false,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      birthDay: json['birthDay'] == null
          ? null
          : DateTime.parse(json['birthDay'] as String),
      fullname: json['fullname'] as String,
      password: json['password'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      token: json['token'] as String?,
      jobInfo: json['jobInfo'] == null
          ? null
          : JobInfo.fromJson(json['jobInfo'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      imgUrl: json['imgUrl'] as String?,
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => EdaucationInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      cvUrl: json['cvUrl'] as String?,
      ceritificates: (json['ceritificates'] as List<dynamic>?)
          ?.map((e) => CeritificateInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'isOnline': instance.isOnline,
      'phone': instance.phone,
      'email': instance.email,
      'birthDay': instance.birthDay?.toIso8601String(),
      'fullname': instance.fullname,
      'password': instance.password,
      'interests': instance.interests,
      'token': instance.token,
      'jobInfo': instance.jobInfo,
      'bio': instance.bio,
      'imgUrl': instance.imgUrl,
      'educations': instance.educations,
      'cvUrl': instance.cvUrl,
      'ceritificates': instance.ceritificates,
      'language': instance.language,
    };
