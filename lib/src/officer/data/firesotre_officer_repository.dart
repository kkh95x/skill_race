


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/officer/data/officer_repository.dart';
import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/domain/officer_state.dart';
part 'firesotre_officer_repository.g.dart';
@riverpod
OfficerRepository officerRepository(OfficerRepositoryRef ref)=>FirestoreOfficerRepository(FirebaseFirestore.instance);
class FirestoreOfficerRepository implements OfficerRepository{
  FirestoreOfficerRepository(this._firebaseFirestore);
 final FirebaseFirestore _firebaseFirestore;
  @override
  Future<void> create(Officer officer)async {
  await _firebaseFirestore.collection(Collections.officer).add(officer.toJson());
  }

  @override
  Future<void> delete(String officerId) async{
   await _firebaseFirestore.collection(Collections.officer).doc(officerId).delete();
  }

  @override
  Stream<List<Officer>> getMyOfficers(String userId, int limit, bool isEmp, OfficerState state, String text) {
    if(isEmp){
      return _firebaseFirestore.collection(Collections.officer)
      .where("employeeId",isEqualTo: userId)
      .where("currentState",isEqualTo: state.name)
      .orderBy("updateAt",descending: true).snapshots().map((event) => event.docs.map((e) => Officer.fromJson(e.data()).copyWith(id:e.id )).toList());

    }else{
      return _firebaseFirestore.collection(Collections.officer)
      .where("hiringId",isEqualTo: userId)
      .where("currentState",isEqualTo: state.name)
      .orderBy("updateAt",descending: true).snapshots().map((event) => event.docs.map((e) => Officer.fromJson(e.data()).copyWith(id:e.id )).toList());

    }
  }

  @override
  Stream<Officer?> getOfficerStreamById(String id) {
   return _firebaseFirestore.collection(Collections.officer).doc(id).snapshots().map((event) =>event.data()==null?null: Officer.fromJson(event.data()!).copyWith(id:event.id));
  }

  @override
  Future<void> update(Officer officer) async{
await _firebaseFirestore.collection(Collections.officer).doc(officer.id).update(officer.toJson());
  }
  
}