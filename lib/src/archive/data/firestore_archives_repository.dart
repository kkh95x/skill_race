



import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/archive/data/archives_repository.dart';
import 'package:skill_race/src/archive/domain/archives.dart';



part 'firestore_archives_repository.g.dart';

@riverpod
ArchivesRepository archivesRepository(ArchivesRepositoryRef ref)=>FirestoreArchivesRepository(FirebaseFirestore.instance);


class FirestoreArchivesRepository implements ArchivesRepository{
  FirestoreArchivesRepository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  @override
  Future<void> create(Archives archive) async{
    await _firebaseFirestore.collection(Collections.archive).add(archive.toJson());
  }

  @override
  Future<void> delete(Archives archives)async {
   await _firebaseFirestore.collection(Collections.archive).doc(archives.id).delete();

  }

  @override
  Stream<Archives?> isCreated(String userId, String refId, ArchivesType type) {
   return _firebaseFirestore.collection(Collections.archive).where("userOwner",isEqualTo: userId)
    .where("refrenceId",isEqualTo: refId,).where("type",isEqualTo: type.name)
    
    .snapshots().map((event) {
      if(event.docs.isEmpty){
        return null;      }
    else  if(event.docs.isNotEmpty){
        return Archives.fromJson(event.docs.first.data()).copyWith(id: event.docs.first.id);
      }
    });


  }

  @override
  Stream<List<Archives>> streamMyArchives(String myId, ArchivesType type, int limit) {
    return  _firebaseFirestore.collection(Collections.archive).where("userOwner",isEqualTo: myId)
    .where("type",isEqualTo: type.name)
    .limit(limit)    
    .snapshots().map((event) => event.docs.map((e) => Archives.fromJson(e.data()).copyWith(id: e.id)).toList());
  }

}