




import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/reviews/application/get_my_review_provider.dart';
import 'package:skill_race/src/reviews/data/firestore_review_repository.dart';
import 'package:skill_race/src/reviews/domain/review.dart';
import 'package:star_rating/star_rating.dart';

class ShowEditReviewProvider{
  BuildContext context;
  String currentUserId;
  Review review;
ShowEditReviewProvider({required this.context,required this.currentUserId,required this.review});

}
final showEditReviewProvider=FutureProvider.autoDispose.family<void,ShowEditReviewProvider>((ref,input) {
  final form=FormGroup({
    "rating":FormControl<double>(validators: [Validators.required,Validators.minLength(1)],value: input.review.stars),
    "text":FormControl<String>(validators: [Validators.maxLength(250)],value: input.review.text)

  });
  showDialog(context: input.context, builder: (context) {

    return AlertDialog(
      title: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Add Review",style:TextStyle(color:Colors.black)),
          Divider()
        ],
      ),
      content: ReactiveForm(
        formGroup: form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.h,),
            ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                return StarRating(
                  length: 5,
                  rating: form.control("rating").value,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              between: 10.w,
                  starSize: 30,
                  color: Theme.of(context).colorScheme.primary,

                  onRaitingTap: (rating) {
                  form.control("rating").value=rating;
                },);
              }
            ),SizedBox(height: 20.h,),
            DynamicInput(
              title: "Review",
              multiLine: true,
              placeholder: "",
            control: "text",
            ),
                        SizedBox(height: 20.h,),

            ReactiveFormConsumer(builder: (context, formGroup, child) {
              return DynamicButton(
                isDisabled: !form.valid,
                title: "Save",
                onPressed: () async{

                  final user=ref.read(userAuthNotifer).currentUser;
                  final rating=form.control("rating").value;
                  final text=form.control("text").value;
                  final reviwe=input.review.copyWith(toUserId: input.currentUserId, stars: rating,text: text);
                  BotToast.showLoading();
                  await ref.read(reviewsRepostoryProvider).update(reviwe);
                  BotToast.closeAllLoading();
                
                  BotToast.showText(text: "Saved");
                  ref.read(getMyReviewProvider(GetMyReviewProvider(currentId: input.currentUserId, myId: user?.id??"")).notifier).init();
                  if(input.context.mounted){
                    // ignore: use_build_context_synchronously
                    input.context.pop();
                  }
              },);
            },)
      
          ],
        ),
      ),
    );
  },);
});