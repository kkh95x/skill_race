

import 'package:skill_race/src/messages/domain/message.dart';

abstract class MessageRepository{
  Stream<List<Message>> getMessagesStream(String chatId,int limit);
  Future<void> create(Message message);
  Future<void> delete(String messageId);
  Future<void> update(Message message);

}