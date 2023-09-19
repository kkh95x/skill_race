import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:skill_race/src/user/presintation/widgets/expanded_list_widget.dart';

class GlobalEmpAbouteProfilePage extends StatelessWidget {
  const GlobalEmpAbouteProfilePage({super.key,required this.user});
 final AppUser user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      maintainBottomViewPadding: true,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
          child: Column(
            children: [
            const  Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Bio"),
                  
                ],
              ),
              
              SizedBox(
                height: 4.h,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  padding: EdgeInsets.all(12.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                  ),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Text(
                        user.bio ?? " ",
                        overflow: TextOverflow.fade,
                      ))),
              SizedBox(
                height: 12.h,
              ),
              ExpandedListWidget(
                  body:user.employee?.lookingForAJob==null?const SizedBox(): Column(
                      children: 
                          [
                            ListTile(title: Text(user.employee?.lookingForAJob?.country??"The Country"),
                             titleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                            subtitle: Text(
                                        user.employee?.lookingForAJob?.city??"The City"),
                                    subtitleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer),
                                                
                                                trailing:Text("Price:${user.employee?.lookingForAJob?.price??0} \$",style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),) ,

                          
                                                ),

                                                 Text(user.employee?.lookingForAJob?.showLookingJobProfile?? false?"Im looking for A Job.":" ",style: Theme.of(context).textTheme.bodyLarge,)
,SizedBox(height: 20.h,)

                          ]),
                  title: Row(
                    children: [
                      Text(
                        "looking for a job",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      
                    ],
                  )),
               SizedBox(
                height: 12.h,
              ),
              ExpandedListWidget(
                  body: Column(
                      children: user.employee?.educations
                              ?.map((e) => ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(e.faculaty),
                                    titleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                    subtitle: Text(
                                        "${e.startDate.year}-${e.endDate.year}"),
                                    subtitleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer),
                                  
                                  ))
                              .toList() ??
                          []),
                  title: Row(
                    children: [
                      Text(
                        "Education",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                     
                    ],
                  )),

              ExpandedListWidget(
                  body: Column(
                      children: user.employee?.expertises
                              ?.map((e) => ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      "${e.workType} - ${e.companyName}",
                                    ),
                                    titleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                    subtitle: Text(
                                        "${e.startDate?.year}-${e.endDate?.year}"),
                                    subtitleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer),
                                   
                                  ))
                              .toList() ??
                          []),
                  title: Text(
                    "Experiences",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 14.sp),
                  )),
              // ExpandedListWidget(

              //   body: Column(
              //     children: [
              //       ListTile(
              //         contentPadding:EdgeInsets.zero,
              //         title: Row(
              //           children: [
              //              Assets.icons.png.attachFile.image(),
              //              SizedBox(width: 4.w,),

              //             const Text("Karim Cv",),
              //           ],
              //         ),
              //         titleTextStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12.sp,fontWeight: FontWeight.w500),
              //         trailing: Row(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //           const EditIconWidget(showText: false,),
              //           SizedBox(width: 9.w,),

              //           Assets.icons.png.delete.image(),

              //         ],
              //       ),

              //       )
              //     ],
              //   ),

              //  title: Row(
              //   children: [
              //      Text("My Cv",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14.sp),),
              //     SizedBox(width: 4.w,),
              //     Assets.icons.png.plusCirlce.image()

              //   ],

              // )),

              
                 ExpandedListWidget(
                    body: Wrap(
                        children: user.employee?.skills
                                ?.map((e) => Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 4.w, vertical: 4.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 8.h),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          gradient: LinearGradient(colors: [
                                            Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ])),
                                      child: Text(
                                        e,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                                fontWeight:
                                                    FontWeight.w400),
                                      ),
                                    ))
                                .toList() ??
                            []),
                    title: Text(
                      "My Skills",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 14.sp),
                    )),
             
              ExpandedListWidget(
                  body: Builder(builder: (context) {
                    // user?.ceritificates?.sort((a, b) => a.createdAt.compareTo(b.createdAt),);
                    return Column(
                        children: user.employee?.ceritificates
                                ?.map((e) => ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      title: Text(
                                        e.name,
                                      ),
                                      titleTextStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500),
                                      subtitle: Text(
                                          "${e.startDate?.year}-${e.endDate?.year}"),
                                      subtitleTextStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer),
                                     
                                    ))
                                .toList() ??
                            []);
                  }),
                  title: Row(
                    children: [
                      Text(
                        "My Certificates",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
             
                    ],
                  )),
              ExpandedListWidget(
                  body: Column(
                      children: user.employee?.language
                              ?.map((e) => ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text(
                                    e,
                                  ),
                                  titleTextStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                 ))
                              .toList() ??
                          []),
                  title: Row(
                    children: [
                      Text(
                        "Languages",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                    
                    
                    ],
                  )),
              SizedBox(
                height: 100.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}