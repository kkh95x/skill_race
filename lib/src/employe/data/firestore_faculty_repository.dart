import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/employe/data/faculty_repository.dart';
import 'package:skill_race/src/employe/domain/faculaty.dart';
part 'firestore_faculty_repository.g.dart';

@riverpod
FacultyRepository facultyRepository(FacultyRepositoryRef ref)=>FirestoreFacultyRepository(FirebaseFirestore.instance);


class FirestoreFacultyRepository implements FacultyRepository{
  FirestoreFacultyRepository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;
  @override
  Future<List<Faculaty>> getAll() async{
       return (await _firebaseFirestore.collection(Collections.faculaty).get()).docs.map((e) => Faculaty.fromJson(e.data()).copyWith(id: e.id)).toList();

  }

  @override
  Future<void> saveAll(List<Faculaty> fas) async{
    for(var f in fas){
      await _firebaseFirestore.collection(Collections.faculaty).add(f.toJson());
    }
  }

}