// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String?,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      messageState:
          $enumDecodeNullable(_$MessageStateEnumMap, json['messageState']) ??
              MessageState.unSeen,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
      content: json['content'] as String,
      chatId: json['chatId'] as String,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messageType': _$MessageTypeEnumMap[instance.messageType]!,
      'messageState': _$MessageStateEnumMap[instance.messageState]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
      'content': instance.content,
      'chatId': instance.chatId,
    };

const _$MessageTypeEnumMap = {
  MessageType.video: 'video',
  MessageType.voice: 'voice',
  MessageType.image: 'image',
  MessageType.text: 'text',
};

const _$MessageStateEnumMap = {
  MessageState.seen: 'seen',
  MessageState.unSeen: 'unSeen',
  MessageState.sending: 'sending',
  MessageState.seendingFaild: 'seendingFaild',
};
