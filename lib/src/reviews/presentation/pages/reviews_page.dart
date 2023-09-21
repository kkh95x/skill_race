
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/project/presentaion/widgets/profile_pic_name_spcial.dart';
import 'package:skill_race/src/reviews/application/calculate_stars_review_for_user.dart';
import 'package:skill_race/src/reviews/application/get_my_review_provider.dart';
import 'package:skill_race/src/reviews/application/get_review_paginaton.dart';
import 'package:skill_race/src/reviews/application/show_alert_dialoge_create_review_provider.dart';
import 'package:skill_race/src/reviews/application/show_edit_review_dialogs.dart';
import 'package:skill_race/src/reviews/data/firestore_review_repository.dart';

class ReviewsComponent extends ConsumerWidget {
  const ReviewsComponent({super.key,required this.userId});
 final String userId;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final controller=ScrollController();
    controller.addListener(() {
      if(controller.position.pixels==controller.position.maxScrollExtent){
         ref.watch(getReviewsPagination(userId).notifier).fetchNextBatch();
      }
    });
    return RefreshIndicator(
      onRefresh: ()async {
        ref.watch(calculateStarsForUserProvider(userId).notifier).init();
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical:20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               ref.watch(calculateStarsForUserProvider(userId)).when(
                skipLoadingOnRefresh: true,
                data: (data) {
                 return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                  Text("Rating And Reviews (${data.lenght} Reviews)",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14.sp),),
      
                     Row(
                children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                              child:  Text("${data.av}",style: Theme.of(context).textTheme.displayMedium,)),
                               StarsRatingWidget(rating: data.av,color: Theme.of(context).colorScheme.primary,)
                          ],
                        ),
                      ),
      
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            children: [
                             
      
                              Row(
                                children: [
                                   Text("5",style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  SizedBox(width: 10.w,),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.h,
                                        // color: Colors.green.shade900,
                                        
                                        value: data.starsCount.fiveStars/data.lenght,
      
                                       ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Text("4",style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  SizedBox(width: 10.w,),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.h,
                                        // color: Colors.green.shade900,
                                        
                                        value:data.starsCount.forueStars/data.lenght,
                                       ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Text("3",style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  SizedBox(width: 10.w,),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.h,
                                        // color: Colors.green.shade900,
                                        
                                        value: data.starsCount.threeStars/data.lenght,
                                       ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Text("2",style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  SizedBox(width: 10.w,),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.h,
                                        // color: Colors.green.shade900,
                                        
                                        value:data.starsCount.towStars/data.lenght,
                                       ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Text("1 ",style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  SizedBox(width: 10.w,),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.h,
                                        // color: Colors.green.shade900,
                                        
                                        value: data.starsCount.oneStars/data.lenght,
                                       ),
                                    ),
                                  ),
                                ],
                              ),
                              
                        
                              
                            ],
                          ),
                        ),
                      )
                ],
              ),
                   ],
                 );
              
               }, error: (error, stackTrace) => Center(child: Text(error.toString()),), loading: () => SizedBox(
                height: 130.h,
                child: const Center(child: CircularProgressIndicator(),)),),
              const Divider(),
              ref.watch(getMyReviewProvider(GetMyReviewProvider(currentId: userId, myId: ref.read(userAuthNotifer).currentUser?.id??""))).when(data: (data) {
                if(data==null){
      
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    child: DynamicButton(
                      title: "Add Review",
                      onPressed: ()async {
                      await  ref.read(showCreateReviewProvider(ShowCreateReviewProvider(context: context, currentUserId: userId)).future).then((value) {});
                                ref.read(calculateStarsForUserProvider(userId).notifier).init();
      
                    },),
                  );
                }
      
                return Card(
                
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: ProfilePicNameSpcialWidget(userId: data.fromUserId),
                        trailing:PopupMenuButton(
      
                          
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () async{
                                BotToast.showLoading();
                                await ref.read(reviewsRepostoryProvider).delete(data.id??"");
                                BotToast.closeAllLoading();
                                ref.read(getMyReviewProvider(GetMyReviewProvider(currentId: userId, myId: ref.read(userAuthNotifer).currentUser?.id??"")).notifier).init();
                                ref.read(calculateStarsForUserProvider(userId).notifier).init();
      
      
                              },
                              
                              child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Assets.icons.png.delete.image(height: 30.r,width: 30.r),
                                Text("Delete",style:TextStyle(color: Theme.of(context).colorScheme.error,fontSize: 12.sp)),
      
                              ],
                                                      )),
                            PopupMenuItem(
                              
                              onTap: ()async {
                                await ref.read(showEditReviewProvider(ShowEditReviewProvider(context: context, currentUserId: userId, review: data)).future);
                                ref.read(calculateStarsForUserProvider(userId).notifier).init();
      
                              },
                              child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Assets.icons.png.edit.image(height: 30.r,width: 30.r),
                                Text("Edit",style:TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 12.sp)),
      
                              ],
                                                      ))
                          ],
                                elevation: 2,
                                position: PopupMenuPosition.under,
      
                                icon: const Icon(
                                  Icons.more_vert,
                                ),
                                iconSize: 20.h,
                                // color: Theme.of(context).colorScheme.,
                              ),
                        
                        
                      ),
                      Row(children: [
                        StarsRatingWidget(rating: data.stars,color: Theme.of(context).colorScheme.primary,),
                        SizedBox(width: 10.w
                        ,),
                        Text("${data.createdAt.day}/${data.createdAt.month}/${data.createdAt.year}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                      ],),
                      SizedBox(height: 10.h,),
                      Text(data.text??" ")
                    ],
                  ),
                ),
              );
              }, error: (error, stackTrace) {
                return Center(child: Text("Error: ${error.toString()}"),);
              }, loading: () {
                
                return Shimmer.fromColors(baseColor: Colors.grey, highlightColor: Colors.white60, child: Card(
                
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Icon(Icons.circle,size: 40.sp,color: Colors.grey,),
                        trailing: IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                      ),
                      Row(children: [
                        StarsRatingWidget(rating: 3,color: Theme.of(context).colorScheme.primary,),
                        SizedBox(width: 10.w
                        ,),
                        Text("**/**/****",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                      ],),
                      SizedBox(height: 10.h,),
                      const Text("********* *********** *********** *** * ***** ******* .",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
              ));
              },),
              ref.watch(getReviewsPagination(userId)).when(data: (recipes) {
      
              if(recipes.isEmpty){
                return const Center(child: Text("No Reviews"),);
              }
              return ListView.builder(
                itemCount: recipes.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:(context, index) {
                  final review=recipes[index];
                  if(review.fromUserId==ref.read(userAuthNotifer).currentUser?.id){
                    return const SizedBox();
                  }
                  return Card(
                
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: ProfilePicNameSpcialWidget(userId: review.fromUserId),
                        trailing: IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                      ),
                      Row(children: [
                        StarsRatingWidget(rating: review.stars,color: Theme.of(context).colorScheme.primary,),
                        SizedBox(width: 10.w
                        ,),
                        Text("${review.createdAt.day}/${review.createdAt.month}/${review.createdAt.year}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                      ],),
                      SizedBox(height: 10.h,),
                      Text(review.text??" ")
                    ],
                  ),
                ),
              );
                }, );
                
              }, loading: () {
                return const Center(child: CircularProgressIndicator(),);
                
              }, error: (e, stk) {
                
                return Center(child: Text("Error: ${e.toString()}"),);
              }, onGoingLoading: (recipes) {
                return ListView.builder(
                itemCount: recipes.length+1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:(context, index) {
                  if(index==recipes.length){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                  final review=recipes[index];
                  return Card(
                
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: ProfilePicNameSpcialWidget(userId: review.fromUserId),
                        trailing: IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                      ),
                      Row(children: [
                        StarsRatingWidget(rating: review.stars,color: Theme.of(context).colorScheme.primary,),
                        SizedBox(width: 10.w
                        ,),
                        Text("${review.createdAt.day}/${review.createdAt.month}/${review.createdAt.year}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                      ],),
                      SizedBox(height: 10.h,),
                      Text(review.text??" ")
                    ],
                  ),
                ),
              );
                }, );
                
              }, onGoingError: (recipes, e, stk) {
                return ListView.builder(
                itemCount: recipes.length+1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:(context, index) {
                  if(index==recipes.length){
                    return  Center(child: Text("Error: $e"),);
                  }
                  final review=recipes[index];
                  return Card(
                
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: ProfilePicNameSpcialWidget(userId: review.fromUserId),
                        trailing: IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                      ),
                      Row(children: [
                        StarsRatingWidget(rating: review.stars,color: Theme.of(context).colorScheme.primary,),
                        SizedBox(width: 10.w
                        ,),
                        Text("${review.createdAt.day}/${review.createdAt.month}/${review.createdAt.year}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                      ],),
                      SizedBox(height: 10.h,),
                      Text(review.text??" ")
                    ],
                  ),
                ));
                });}),
              SizedBox(height: 100.h,)
            ],
          ),
        ),
      ),
    );
  }
}