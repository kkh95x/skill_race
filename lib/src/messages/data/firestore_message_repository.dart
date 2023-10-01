


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/messages/data/message_repository.dart';
import 'package:skill_race/src/messages/domain/message.dart';
part 'firestore_message_repository.g.dart';
@riverpod
MessageRepository messageRepository(MessageRepositoryRef ref)=>FirestoreMessageRepository(FirebaseFirestore.instance);

class FirestoreMessageRepository implements MessageRepository{
  FirestoreMessageRepository(this._firebaseFirestore);
 final FirebaseFirestore _firebaseFirestore;
  @override
  Future<void> create(Message message) async{
  
   await _firebaseFirestore.collection(Collections.message).add(message.toJson());
  }

  @override
  Future<void> delete(String messageId)async {
  await _firebaseFirestore.collection(Collections.message).doc(messageId).delete();
  }

  @override
  Stream<List<Message>> getMessagesStream(String chatId, int limit) {
   return _firebaseFirestore.collection(Collections.message)
   .where("chatId",isEqualTo: chatId)
   .orderBy("createdAt")
   .limit(limit)
   .snapshots().map((event) => event.docs.map((e) => Message.fromJson(e.data()).copyWith(id: e.id)).toList());
  }

  @override
  Future<void> update(Message message)async {
   await _firebaseFirestore.collection(Collections.message).doc(message.id).update(message.toJson());
  }

}