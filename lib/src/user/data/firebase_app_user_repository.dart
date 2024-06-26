import 'package:skill_race/collections.dart';
import 'package:skill_race/src/user/data/app_user_repository.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'firebase_app_user_repository.g.dart';

@riverpod
AppUserRepository userRepository(UserRepositoryRef ref) =>
    FirebaseAppUserRepository(FirebaseFirestore.instance);

class FirebaseAppUserRepository implements AppUserRepository {
  final FirebaseFirestore _firestore;
  FirebaseAppUserRepository(this._firestore);
  @override
  Future<AppUser> create(AppUser appUser) async {
    final body=appUser.toJson();
    await _firestore.collection(Collections.users).doc(appUser.id).set(body);
    // final userID = newDocRef.id;
    // final newUser = appUser.copyWith(id: userID);
   
    return appUser;
  }

  @override
  Future<AppUser?> getById(String id) async {
    final query = await _firestore.collection(Collections.users).doc(id).get();
    if (query.exists) {
      return AppUser.fromJson(query.data() as Map<String, Object?>)
          .copyWith(id: query.id);
    }
    return null;
  }

  @override
  Future<AppUser> update(AppUser appUser) async {
    await _firestore
        .collection(Collections.users)
        .doc(appUser.id)
        .set(appUser.toJson());
    return appUser;
  }
  
  @override
  Future<AppUser?> getByEmail(String email)async {
   final query = await _firestore.collection(Collections.users).where("email",isEqualTo:email ).get();
    if (query.docs.isNotEmpty) {
      return AppUser.fromJson(query.docs.first.data())
          .copyWith(id: query.docs.first.id);
    }
    return null;
  }
}
