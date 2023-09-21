


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_race/src/reviews/data/firestore_review_repository.dart';
import 'package:skill_race/src/reviews/domain/review.dart';
part 'get_my_review_provider.freezed.dart';
@freezed
abstract class GetMyReviewProvider with _$GetMyReviewProvider {
  factory GetMyReviewProvider({
    required  String myId,
    required String currentId,
  }) = _GetMyReviewProvider;
}


final getMyReviewProvider=StateNotifierProvider.family<GetMyReviewNotifer,AsyncValue<Review?>,GetMyReviewProvider>((ref,input) { 
  return GetMyReviewNotifer(input.currentId, ref, input.myId)..init();});


 class GetMyReviewNotifer extends StateNotifier<AsyncValue<Review?>>{
  GetMyReviewNotifer(this.currentId,this.ref,this.myId):super(const AsyncLoading());
 final Ref ref;
  final String currentId;
  final String myId;
  Future<void> init()async{
    state=const AsyncLoading();
final rev=  await ref.read(reviewsRepostoryProvider).getMyReview(myId, currentId);
state =AsyncData(rev);
  }

 }

