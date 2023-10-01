

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/financial_account/data/financial_account_repository.dart';
import 'package:skill_race/src/financial_account/domain/financial_account.dart';
part 'firestore_financial_account_repository.g.dart';
@riverpod
FinancialAccountReposiotry financialAccountReposiotry(FinancialAccountReposiotryRef ref){
  return FrestoreFinancialAccountRepository(FirebaseFirestore.instance);
}
class FrestoreFinancialAccountRepository implements FinancialAccountReposiotry{
  FrestoreFinancialAccountRepository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  @override
  Future<FinancialAccount> create(FinancialAccount financialAccount) async{
   final ref=_firebaseFirestore.collection(Collections.financialAccount).doc();
   final newFinancialAccount=financialAccount.copyWith(id: ref.id);
    await _firebaseFirestore.collection(Collections.financialAccount).doc(ref.id).set(newFinancialAccount.toJson());
   return financialAccount;
   

  }

  @override
  Future<FinancialAccount?> get(String referenceId)async {
   final snapshot=await _firebaseFirestore.collection(Collections.financialAccount)
    .where("referenceId",isEqualTo: referenceId).get();
    if(snapshot.docs.isEmpty){
      return null;
    }else{
      return FinancialAccount.fromJson(snapshot.docs.first.data()).copyWith(id: snapshot.docs.first.id);
    }
  }

  @override
  Stream<FinancialAccount?> getAsStream(String id) {
  return _firebaseFirestore.collection(Collections.financialAccount)
  .doc(id).snapshots().map((event) =>(event.data()?.isEmpty??false)? FinancialAccount.fromJson(event.data()!).copyWith(id: event.id):null);
  }

}