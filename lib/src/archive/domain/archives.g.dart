// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archives.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Archives _$$_ArchivesFromJson(Map<String, dynamic> json) => _$_Archives(
      id: json['id'] as String?,
      refrenceId: json['refrenceId'] as String,
      userOwner: json['userOwner'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      type: $enumDecode(_$ArchivesTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ArchivesToJson(_$_Archives instance) =>
    <String, dynamic>{
      'id': instance.id,
      'refrenceId': instance.refrenceId,
      'userOwner': instance.userOwner,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': _$ArchivesTypeEnumMap[instance.type]!,
    };

const _$ArchivesTypeEnumMap = {
  ArchivesType.post: 'post',
  ArchivesType.user: 'user',
};
