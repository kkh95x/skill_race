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
      state: $enumDecodeNullable(_$UserStateEnumMap, json['state']) ??
          UserState.avalible,
      fullname: json['fullname'] as String,
      accountType: $enumDecode(_$AccountTypeEnumMap, json['accountType']),
      password: json['password'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      token: json['token'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      bio: json['bio'] as String?,
      imgUrl: json['imgUrl'] as String?,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
      hiring: json['hiring'] == null
          ? null
          : Hiring.fromJson(json['hiring'] as Map<String, dynamic>),
      lastEdtiName: json['lastEdtiName'] == null
          ? null
          : DateTime.parse(json['lastEdtiName'] as String),
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'isOnline': instance.isOnline,
      'phone': instance.phone,
      'email': instance.email,
      'birthDay': instance.birthDay?.toIso8601String(),
      'state': _$UserStateEnumMap[instance.state]!,
      'fullname': instance.fullname,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
      'password': instance.password,
      'interests': instance.interests,
      'token': instance.token,
      'country': instance.country,
      'city': instance.city,
      'bio': instance.bio,
      'imgUrl': instance.imgUrl,
      'employee': instance.employee?.toJson(),
      'hiring': instance.hiring?.toJson(),
      'lastEdtiName': instance.lastEdtiName?.toIso8601String(),
    };

const _$UserStateEnumMap = {
  UserState.avalible: 'avalible',
  UserState.away: 'away',
  UserState.inWeekend: 'inWeekend',
  UserState.busy: 'busy',
};

const _$AccountTypeEnumMap = {
  AccountType.employe: 'employe',
  AccountType.hiring: 'hiring',
};
