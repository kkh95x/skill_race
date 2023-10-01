
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_race/src/messages/domain/message.dart';
part 'chat.freezed.dart';

part 'chat.g.dart';
@freezed
class Chat with _$Chat {
  const factory Chat({
   String? id,
   required ChatState chatState,
   required DateTime createdAt,
   required List<String> usersId,
  required List<String> usersname,

   required Message? lastMessage,
   required DateTime updatedAt ,
    
  }) = _Chat;

  factory Chat.fromJson(Map<String, Object?> json)
      => _$ChatFromJson(json);
}
enum ChatState{seen,unSeen}