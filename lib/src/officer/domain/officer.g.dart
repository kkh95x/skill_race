// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'officer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Officer _$$_OfficerFromJson(Map<String, dynamic> json) => _$_Officer(
      id: json['id'] as String?,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      deadLine: json['deadLine'] == null
          ? null
          : DateTime.parse(json['deadLine'] as String),
      description: json['description'] as String?,
      currentStatus:
          OfficerState.fromJson(json['currentStatus'] as Map<String, dynamic>),
      status: (json['status'] as List<dynamic>?)
          ?.map((e) => OfficerState.fromJson(e as Map<String, dynamic>))
          .toList(),
      hiringId: json['hiringId'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      updateAt: DateTime.parse(json['updateAt'] as String),
      employeeId: json['employeeId'] as String,
    );

Map<String, dynamic> _$$_OfficerToJson(_$_Officer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'deadLine': instance.deadLine?.toIso8601String(),
      'description': instance.description,
      'currentStatus': instance.currentStatus.toJson(),
      'status': instance.status?.map((e) => e.toJson()).toList(),
      'hiringId': instance.hiringId,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt.toIso8601String(),
      'employeeId': instance.employeeId,
    };
