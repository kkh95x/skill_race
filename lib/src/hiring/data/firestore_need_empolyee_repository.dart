


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/hiring/data/need_employee_repository.dart';
import 'package:skill_race/src/hiring/domain/need_employe_request.dart';
part 'firestore_need_empolyee_repository.g.dart';
@riverpod
NeedEmployeedRequestRepository needEmployeedRequestRepository(NeedEmployeedRequestRepositoryRef ref)=>FirestoreNeedEmployeeRequest(FirebaseFirestore.instance);

class FirestoreNeedEmployeeRequest implements NeedEmployeedRequestRepository{
FirestoreNeedEmployeeRequest(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  @override
  Future<void> create(NeedEmployeeRequest needEmployeeRequest)async {
   await _firebaseFirestore.collection(Collections.needEmployeeRequest).add(needEmployeeRequest.toJson());
  }
  
}