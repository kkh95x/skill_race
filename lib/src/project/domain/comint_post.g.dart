// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comint_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComintPost _$$_ComintPostFromJson(Map<String, dynamic> json) =>
    _$_ComintPost(
      userId: json['userId'] as String,
      comint: json['comint'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ComintPostToJson(_$_ComintPost instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'comint': instance.comint,
      'createdAt': instance.createdAt.toIso8601String(),
    };
