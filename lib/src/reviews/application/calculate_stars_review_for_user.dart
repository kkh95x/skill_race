import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/reviews/data/firestore_review_repository.dart';
import 'package:skill_race/src/reviews/data/review_repository.dart';

final calculateStarsForUserProvider=StateNotifierProvider.family<StateCalclateStarsNotifer,AsyncValue<CalculateStarsForUserOutput>,String>((ref,userId) {
return StateCalclateStarsNotifer(const AsyncLoading(), userId, ref)..init(); });


class StateCalclateStarsNotifer extends StateNotifier<AsyncValue<CalculateStarsForUserOutput>>{
  StateCalclateStarsNotifer(super.state,this.currentId,this.ref);
  final String currentId;
   final Ref ref;
  Future<void> init()async{
  state= const AsyncLoading();
  final stars=await ref.read(reviewsRepostoryProvider).getStarsCount(currentId);


  int limit=stars.oneStars+stars.towStars+stars.threeStars+stars.forueStars+stars.fiveStars;
  int lenght =limit;
  
  limit= limit==0?1:limit;

  double av=((1*stars.oneStars)+(2*stars.towStars)+(3*stars.threeStars)+(4*stars.forueStars)+(5*stars.fiveStars))/limit;
 

 av =(av*10).floor()/10;
  

  state=AsyncData(CalculateStarsForUserOutput(av: av, lenght: limit, starsCount: stars,limit: lenght));
  }
}
class CalculateStarsForUserOutput{
  double av;
  StarsCount starsCount;
  int lenght;
  int limit;
  CalculateStarsForUserOutput({
    required this.av,
    required this.lenght,
    required this.starsCount,
    required this.limit
  });
  
}