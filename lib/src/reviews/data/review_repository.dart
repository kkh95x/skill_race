

import 'package:skill_race/src/reviews/domain/review.dart';

abstract class ReviewsRepostory{
  Future<void>create(Review review);
    Future<void>update(Review review);

  Future<Review?> getMyReview(String myId,String currentUserId);
  Stream<List<Review>>getStream(int count,String myId,String currentUserId);
  Future<void> delete(String id);
  Future<StarsCount> getStarsCount(String userId);
}
class StarsCount{
 final int oneStars;
 final int towStars;
 final int threeStars;
 final int forueStars;
 final int fiveStars;
  StarsCount({
    required this.oneStars,
        required this.towStars,
            required this.threeStars, 
               required this.forueStars,    required this.fiveStars,
  });
}