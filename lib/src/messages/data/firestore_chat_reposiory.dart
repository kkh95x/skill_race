

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/messages/data/chat_repository.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
part 'firestore_chat_reposiory.g.dart';
@riverpod
ChatRepository chatRepository(ChatRepositoryRef ref)=>FirestoreChatRepository(FirebaseFirestore.instance);
class FirestoreChatRepository implements ChatRepository{
  FirestoreChatRepository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  @override
  Future<Chat> create(Chat chat)async {
    final id=_firebaseFirestore.collection(Collections.chat).doc();
      final newChat=chat.copyWith(id: id.id);
      await _firebaseFirestore.collection(Collections.chat).doc(id.id).set(newChat.toJson());
      return newChat;
  }

  @override
  Future<void> delete(String chatId)async {
    _firebaseFirestore.collection(Collections.chat).doc(chatId).delete();
  }

  @override
  Stream<List<Chat>> getMyChats(String userId, int limit,String text,) {
    if(text.isEmpty){
    return _firebaseFirestore.collection(Collections.chat)
    .limit(limit)
    .where("usersId",arrayContains: userId)
    .orderBy("updatedAt",descending: true).snapshots()
    .map((event) => event.docs.map((e) => Chat.fromJson(e.data()).copyWith(id: e.id)).toList());
    }else{

   return   _firebaseFirestore.collection(Collections.chat)
    // .limit(limit)
    .where("usersId",arrayContains: userId)
    
    .orderBy("updatedAt",descending: true)
    
    .snapshots()

    .map((event) => event.docs.map((e) => Chat.fromJson(e.data()).copyWith(id: e.id)).toList()).map((event) {
     return event.where((e) => e.usersname.contains(text)).toList();
    });
    
 
    }
  }

  @override
  Future<void> updated(Chat chat)async {
  await  _firebaseFirestore.collection(Collections.chat).doc(chat.id).update(chat.toJson());
  }
  
  @override
  Future<Chat?> get(List<String> usersId)async {
   final snapshote=await _firebaseFirestore.collection(Collections.chat)
    .where("usersId",isEqualTo: usersId)
    
    .get();
    if(snapshote.docs.isEmpty){
   final snapshote2=await _firebaseFirestore.collection(Collections.chat)
    .where("usersId",isEqualTo: usersId.reversed.toList())
    
    .get();
    if(snapshote2.docs.isEmpty){
      return null;
    }else{
          return Chat.fromJson( snapshote.docs.first.data()).copyWith(id: snapshote.docs.first.id);

    }

    }else{
    return Chat.fromJson( snapshote.docs.first.data()).copyWith(id: snapshote.docs.first.id);

    }
  }
  
  @override
  Future<Chat?> getById(String chatId) async{
   final snapshot=await _firebaseFirestore.collection(Collections.chat)
   .doc(chatId).get();
   if(snapshot.exists&&snapshot.data()!=null){
    return Chat.fromJson(snapshot.data()!).copyWith(id: snapshot.id);
   }else{
    return null;
   }
  }

}