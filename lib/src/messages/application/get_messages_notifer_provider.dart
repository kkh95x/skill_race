






import 'dart:io';
import 'dart:math';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/application/messages_notifer/messages_notifer.dart';
import 'package:skill_race/src/messages/application/messages_notifer/messages_state.dart';
import 'package:skill_race/src/messages/data/firestore_chat_reposiory.dart';
import 'package:skill_race/src/messages/data/firestore_message_repository.dart';
import 'package:skill_race/src/messages/domain/message.dart';
import 'package:skill_race/src/project/application/save_new_post_provider.dart';

final getMessagesNotiferProvider=StateNotifierProvider.family<MessagesNotifier<Message>,MessagesState<Message>,String>((ref,chatId) {


  return MessagesNotifier
  (getSnapshoots: (limit) {
    return ref.read(messageRepositoryProvider).getMessagesStream(chatId, limit);
     }, recordPerBatch: 20, 
  sendNewMessage: (newMessage) {
    
    return  ref.read(sendMessageHelper(newMessage).future);
  },)..init();
});


final sendMessageHelper=FutureProvider.autoDispose.family<void,Message>((ref,message)async {
  final messageRepo=ref.read(messageRepositoryProvider);
  final now=DateTime.now();
  final user=ref.read(userAuthNotifer).currentUser;
  if(message.messageType==MessageType.text){
   await messageRepo.create(message);
  }
  if(message.messageType==MessageType.voice){
      final name="${Random().nextInt(1000)}${now.toIso8601String()}.${message.content.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("chats/${user?.id}/chats/${message.chatId}/vocies/$name");
     final  task=reff.putFile(File(message.content));
     final snap=await task.whenComplete(() => null);
     final  url=await snap.ref.getDownloadURL();
        await messageRepo.create(message.copyWith(content: url));


  }
  if(message.messageType==MessageType.image){
      final name="${Random().nextInt(1000)}${now.toIso8601String()}.${message.content.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("chats/${user?.id}/chats/${message.chatId}/images/$name");
     final  task=reff.putFile(File(message.content));
     final snap=await task.whenComplete(() => null);
     final  url=await snap.ref.getDownloadURL();
     await messageRepo.create(message.copyWith(content: url));


  }
   if(message.messageType==MessageType.video){
      final name="${Random().nextInt(1000)}${now.toIso8601String()}.${message.content.split(".").last}";
    final reff=  FirebaseStorage.instance.ref()
        .child("chats/${user?.id}/chats/${message.chatId}/videos/$name");
     final  task=reff.putFile(File(message.content));
     final url=await uploade(task,1,1);
     await messageRepo.create(message.copyWith(content: url));


  }
 ref.read(chatRepositoryProvider).getById(message.chatId).then((chat) {
  if(chat!=null){
  ref.read(chatRepositoryProvider).updated(chat.copyWith(lastMessage: message,updatedAt: message.createdAt));
  }});

});

