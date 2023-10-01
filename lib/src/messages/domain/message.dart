
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.freezed.dart';

part 'message.g.dart';
@freezed
class Message with _$Message {
  const factory Message({
   String? id,
   required MessageType messageType,
    @Default(MessageState.unSeen) MessageState messageState,
   required DateTime createdAt,
   required String userId,//sender
   required String content,
   required String chatId,
    
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json)
      => _$MessageFromJson(json);
}

enum MessageType{video,voice,image,text}
enum MessageState{seen,unSeen,sending,seendingFaild}