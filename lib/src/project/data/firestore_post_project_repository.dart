


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
  Stream<List<PostProject>> getMyVideo(String id,int limit) {
    return _firebaseFirestore.collection(Collections.postProject)
    .orderBy("createdAt",descending: true)
    .where("userId",isEqualTo: id)
    .where("postProjectType",isEqualTo: PostProjectType.video.name)
    .limit(limit).snapshots().map((event) => event.docs.map((e) => PostProject.fromJson(e.data()).copyWith(id: e.id)).toList());
  }
  
  @override
  Stream<List<PostProject>> getAll(int limit) {
    return _firebaseFirestore.collection(Collections.postProject)
    .orderBy("createdAt",descending: true)
    .limit(limit).snapshots().map((event) => event.docs.map((e) => PostProject.fromJson(e.data()).copyWith(id: e.id)).toList());
  }
  
  @override
  Future<PostProject?> get(String id)async {


   final respone=await _firebaseFirestore.collection(Collections.postProject).doc(id).get();
   if(respone.exists){
    return PostProject.fromJson(respone.data() as Map<String ,Object?>).copyWith(id: respone.id);
   }else{
    return null;
   }
  }
  
  @override
  Stream<List<PostProject>> getMyImages(String id, int limit) {
   return _firebaseFirestore.collection(Collections.postProject)
    .orderBy("createdAt",descending: true)
    .where("userId",isEqualTo: id)
    .where("postProjectType",isEqualTo: PostProjectType.images.name)
    .limit(limit).snapshots().map((event) => event.docs.map((e) => PostProject.fromJson(e.data()).copyWith(id: e.id)).toList());
  
  }
  
  @override
  Stream<List<PostProject>> getAllVideo(int limit) {
   return _firebaseFirestore.collection(Collections.postProject)
    .orderBy("createdAt",descending: true)
     .where("postProjectType",isEqualTo: PostProjectType.video.name)

    .limit(limit).snapshots().map((event) => event.docs.map((e) => PostProject.fromJson(e.data()).copyWith(id: e.id)).toList());
 
  }

}