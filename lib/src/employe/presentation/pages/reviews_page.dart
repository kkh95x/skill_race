
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/project/presentaion/widgets/profile_pic_name_spcial.dart';

class ReviewsComponent extends ConsumerWidget {
  const ReviewsComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical:20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Rating And Reviews",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14.sp),),

            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                        child:  Text("4.3",style: Theme.of(context).textTheme.displayMedium,)),
                         StarsRatingWidget(rating: 4.3,color: Theme.of(context).colorScheme.primary,)
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
                                  
                                  value: 0.5,
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
                                  
                                  value: 0.7,
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
                                  
                                  value: 0.11,
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
                                  
                                  value: 0.2,
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
                                  
                                  value: 0,
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
            Divider(),
            Card(
              
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: ProfilePicNameSpcialWidget(userId: ref.read(userAuthNotifer).currentUser?.id??""),
                      trailing: IconButton(onPressed: () {
                        
                      }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                    ),
                    Row(children: [
                      StarsRatingWidget(rating: 3,color: Theme.of(context).colorScheme.primary,),
                      SizedBox(width: 10.w
                      ,),
                      Text("12/2/2023",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                    ],),
                    SizedBox(height: 10.h,),
                    Text("Exceptional developer! Their skills and dedication shine through in every project. Consistently delivers high-quality code and exceeds expectations. Highly recommended for any development needs.")
                  ],
                ),
              ),
            ),
            Card(
              
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: ProfilePicNameSpcialWidget(userId: ref.read(userAuthNotifer).currentUser?.id??""),
                      trailing: IconButton(onPressed: () {
                        
                      }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                    ),
                    Row(children: [
                      StarsRatingWidget(rating: 3,color: Theme.of(context).colorScheme.primary,),
                      SizedBox(width: 10.w
                      ,),
                      Text("12/2/2023",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                    ],),
                    SizedBox(height: 10.h,),
                    Text("Exceptional developer! Their skills and dedication shine through in every project. Consistently delivers high-quality code and exceeds expectations. Highly recommended for any development needs.")
                  ],
                ),
              ),
            ),
            Card(
              
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: ProfilePicNameSpcialWidget(userId: ref.read(userAuthNotifer).currentUser?.id??""),
                      trailing: IconButton(onPressed: () {
                        
                      }, icon: Icon(Icons.more_vert,size: 18.sp,)),
                    ),
                    Row(children: [
                      StarsRatingWidget(rating: 3,color: Theme.of(context).colorScheme.primary,),
                      SizedBox(width: 10.w
                      ,),
                      Text("12/2/2023",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer,fontSize: 12.sp),)
                    ],),
                    SizedBox(height: 10.h,),
                    Text("Exceptional developer! Their skills and dedication shine through in every project. Consistently delivers high-quality code and exceeds expectations. Highly recommended for any development needs.")
                  ],
                ),
              ),
            ),
            SizedBox(height: 100.h,)
          ],
        ),
      ),
    );
  }
}