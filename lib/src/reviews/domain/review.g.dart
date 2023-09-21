// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      id: json['id'] as String?,
      fromUserId: json['fromUserId'] as String,
      toUserId: json['toUserId'] as String,
      stars: (json['stars'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'fromUserId': instance.fromUserId,
      'toUserId': instance.toUserId,
      'stars': instance.stars,
      'createdAt': instance.createdAt.toIso8601String(),
      'text': instance.text,
    };
