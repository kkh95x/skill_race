



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/data/specialization_repository.dart';
import 'package:skill_race/core/domain/specialization.dart';
part 'firestor_specialization_repository.g.dart';
@riverpod
SpecializationRepository specializationRepository(SpecializationRepositoryRef ref)=>FireStoreSpecialization(FirebaseFirestore.instance);

class FireStoreSpecialization implements SpecializationRepository{
  FireStoreSpecialization(this._firestore);
  final  FirebaseFirestore _firestore; 
  @override
  Future<List<Specialization>> get()async {
   return (await _firestore.collection(Collections.specialization).get()).docs.map((e) => Specialization.fromJson(e.data())).toList();
    }
}