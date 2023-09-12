


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/project/data/post_project_repository.dart';
import 'package:skill_race/src/project/domain/project.dart';
part 'firestore_post_project_repository.g.dart';

@riverpod
PostProjectRepository postProjectRepository(PostProjectRepositoryRef ref)=>FirestorePostProjectRepository(FirebaseFirestore.instance);

class FirestorePostProjectRepository implements PostProjectRepository{
  FirestorePostProjectRepository(this._firebaseFirestore);
 final FirebaseFirestore _firebaseFirestore;
  @override
  Future<void> create(PostProject postProject) async{
    await _firebaseFirestore.collection(Collections.postProject).add(postProject.toJson());
  }

  @override
  Future<List<PostProject>?> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<List<PostProject>?> getMin(String id) {
    // TODO: implement getMin
    throw UnimplementedError();
  }

}