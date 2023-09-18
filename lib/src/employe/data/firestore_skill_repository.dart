


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/employe/data/skill_reostory.dart';
import 'package:skill_race/src/employe/domain/skill.dart';
part 'firestore_skill_repository.g.dart';
@riverpod
SkilRepository skilRepository(SkilRepositoryRef ref)=>FirestoreSkillsReposiotry(FirebaseFirestore.instance);

class FirestoreSkillsReposiotry implements SkilRepository{
  FirestoreSkillsReposiotry(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  @override
  Future<List<Skill>> getAll()async {
   return (await _firebaseFirestore.collection(Collections.skills).get()).docs.map((e) => Skill.fromJson(e.data()).copyWith(id: e.id)).toList();
  }

  // @override
  // Future<void> saveAll(List<Skill> skills)async {
  //   for(var skill in skills){
  //     await _firebaseFirestore.collection(Collections.skills).add(skill.toJson());
  //   }
  // }

}