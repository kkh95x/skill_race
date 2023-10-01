

import 'package:skill_race/src/messages/domain/chat.dart';

abstract class ChatRepository{
  Stream<List<Chat>>  getMyChats(String userId, int limit,String text);
  Future<Chat> create(Chat chat);
  Future<void> updated(Chat chat);
  Future<void> delete(String chatId);
  Future<Chat?> get(List<String> usersId);
    Future<Chat?> getById(String chatId);

}