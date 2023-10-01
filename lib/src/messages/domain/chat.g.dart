// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as String?,
      chatState: $enumDecode(_$ChatStateEnumMap, json['chatState']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      usersId:
          (json['usersId'] as List<dynamic>).map((e) => e as String).toList(),
      usersname:
          (json['usersname'] as List<dynamic>).map((e) => e as String).toList(),
      lastMessage: json['lastMessage'] == null
          ? null
          : Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'chatState': _$ChatStateEnumMap[instance.chatState]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'usersId': instance.usersId,
      'usersname': instance.usersname,
      'lastMessage': instance.lastMessage?.toJson(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ChatStateEnumMap = {
  ChatState.seen: 'seen',
  ChatState.unSeen: 'unSeen',
};
