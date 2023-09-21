import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/reviews/data/firestore_review_repository.dart';
import 'package:skill_race/src/reviews/domain/review.dart';

final getReviewsPagination=StateNotifierProvider.family<PaginationNotifier<Review>,PaginationState<Review>,String>((ref,currentId) {  
  final user=ref.read(userAuthNotifer).currentUser;
  return PaginationNotifier(getSnapshoots: (limit) {
    return ref.read(reviewsRepostoryProvider).getStream(limit, user?.id??"", currentId);
  }, recordPerBatch: 5)..init();
});