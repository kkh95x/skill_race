



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/src/reviews/data/review_repository.dart';
import 'package:skill_race/src/reviews/domain/review.dart';
part 'firestore_review_repository.g.dart';

@riverpod
ReviewsRepostory reviewsRepostory(ReviewsRepostoryRef ref)=>FireStoreReviewsReository(FirebaseFirestore.instance);

class FireStoreReviewsReository implements ReviewsRepostory{
FireStoreReviewsReository(this._firebaseFirestore);
  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<void> create(Review review) async{
    await  _firebaseFirestore.collection(Collections.review).add(review.toJson());
    return;
  }

  @override
  Future<void> delete(String id)async {
  
   return  await _firebaseFirestore.collection(Collections.review).doc(id).delete();
  }

  @override
  Future<Review?> getMyReview(String myId, String currentUserId)async {
 
  final query = await _firebaseFirestore
      .collection(Collections.review)
      .where("fromUserId", isEqualTo: myId)
      .where("toUserId", isEqualTo: currentUserId)
      .get();

  if (query.docs.isEmpty) {
    return null;
  }

  final firstDocument = query.docs.first;
  final reviewData = firstDocument.data() ;

  return Review.fromJson(reviewData).copyWith(id: firstDocument.id);


  
  
  }

  @override
  Stream<List<Review>> getStream(int count, String myId, String currentUserId) {
return _firebaseFirestore.collection(Collections.review)
.where("toUserId",isEqualTo: currentUserId)
// .where("fromUserId",isNotEqualTo: myId)
.limit(count)
.orderBy("createdAt",descending: true).snapshots().map((event) => event.docs.map((e) => Review.fromJson(e.data()).copyWith(id: e.id)).toList());
  }
  
  @override
  Future<void> update(Review review )async{
   await _firebaseFirestore.collection(Collections.review).doc(review.id).update(review.toJson());
  }
  
  @override
  Future<StarsCount> getStarsCount(String userId)async {
    int one=0,tow=0,three=0,four=0,five=0;
    final oneQuery= await _firebaseFirestore.collection(Collections.review).where("toUserId",isEqualTo: userId).where("stars",isEqualTo: 1.0).count().get();
     one=  oneQuery.count;
      final towQuery= await _firebaseFirestore.collection(Collections.review).where("toUserId",isEqualTo: userId).where("stars",isEqualTo: 2.0).count().get();
     tow=  towQuery.count;
      final threeQuery= await _firebaseFirestore.collection(Collections.review).where("toUserId",isEqualTo: userId).where("stars",isEqualTo: 3.0).count().get();
     three=  threeQuery.count;
      final fourQuery= await _firebaseFirestore.collection(Collections.review).where("toUserId",isEqualTo: userId).where("stars",isEqualTo: 4.0).count().get();
     four=  fourQuery.count;
      final fiveQuery= await _firebaseFirestore.collection(Collections.review).where("toUserId",isEqualTo: userId).where("stars",isEqualTo: 5.0).count().get();
     five=  fiveQuery.count;

     return StarsCount(oneStars: one, towStars: tow, threeStars: three, forueStars: four, fiveStars: five);

  }

}