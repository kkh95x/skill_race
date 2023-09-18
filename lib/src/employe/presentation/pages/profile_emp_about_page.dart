import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_certificate_page.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_education_page.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_expertise_page.dart';
import 'package:skill_race/src/employe/application/profile_dialoge_provider.dart';
import 'package:skill_race/src/employe/presentation/pages/emp_add_looking_job_page.dart';
import 'package:skill_race/src/user/presintation/widgets/edit_icon_widget.dart';
import 'package:skill_race/src/user/presintation/widgets/expanded_list_widget.dart';

final _showSkillDeleteProvider = StateProvider<bool>((ref) => false);

class ProfileEmpAboutePage extends ConsumerWidget {
  const ProfileEmpAboutePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userAuthNotifer).currentUser;
    return SafeArea(
      bottom: true,
      maintainBottomViewPadding: true,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Bio"),
                  EditIconWidget(
                    onTap: () {
                      EmpProfileDialoges.showEditBioDialoge(
                          context: context, ref: ref, oldBio: user?.bio);
                    },
                  )
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
                        user?.bio ?? " ",
                        overflow: TextOverflow.fade,
                      ))),
              SizedBox(
                height: 12.h,
              ),
              ExpandedListWidget(
                  body:user?.employee?.lookingForAJob==null?const SizedBox(): Column(
                      children: 
                          [
                            ListTile(title: Text(user?.employee?.lookingForAJob?.country??"The Country"),
                             titleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                            subtitle: Text(
                                        user?.employee?.lookingForAJob?.city??"The City"),
                                    subtitleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer),
                                                
                                                trailing:Text("Price:${user?.employee?.lookingForAJob?.price??0} \$",style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),) ,

                          
                                                ),

                                                 Text("${user?.employee?.lookingForAJob?.showLookingJobProfile?? false?"":"Don't "}Show me looking for A Job.",style: Theme.of(context).textTheme.bodyLarge,)
,SizedBox(height: 20.h,)

                          ]),
                  title: Row(
                    children: [
                      Text(
                        "I'm looking for a job",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            context.push(EmpAddLookingForJobPage.routePath,
                                extra: user?.employee?.lookingForAJob);
                          },
                          child:const EditIconWidget(showText: false,))
                    ],
                  )),
               SizedBox(
                height: 12.h,
              ),
              ExpandedListWidget(
                  body: Column(
                      children: user?.employee?.educations
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
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        EditIconWidget(
                                          showText: false,
                                          onTap: () {
                                            context.push(
                                                EmpAddEducationPage.routePath,
                                                extra: e);
                                          },
                                        ),
                                        SizedBox(
                                          width: 9.w,
                                        ),
                                        GestureDetector(
                                            onTap: () async {
                                              await EmpProfileDialoges
                                                  .showDanger(
                                                context: context,
                                                ref: ref,
                                                text:
                                                    "Are you sure to delete the Education?",
                                                onPressed: () {
                                                  final old = user
                                                      .employee?.educations
                                                      ?.where((element) =>
                                                          element.createdAt !=
                                                          e.createdAt)
                                                      .toList();
                                                  ref
                                                      .read(userAuthNotifer
                                                          .notifier)
                                                      .updateUser(user.copyWith(
                                                          employee: user
                                                              .employee
                                                              ?.copyWith(
                                                                  educations:
                                                                      old)));
                                                },
                                              );
                                            },
                                            child: Assets.icons.png.delete
                                                .image()),
                                      ],
                                    ),
                                  ))
                              .toList() ??
                          []),
                  title: Row(
                    children: [
                      Text(
                        "My Education",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            context.push(EmpAddEducationPage.routePath,
                                extra: null);
                          },
                          child: Assets.icons.png.plusCirlce.image())
                    ],
                  )),

              ExpandedListWidget(
                  body: Column(
                      children: user?.employee?.expertises
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
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        EditIconWidget(
                                          showText: false,
                                          onTap: () {
                                            context.push(
                                                EmpAddExpertisePage.routePath,
                                                extra: e);
                                          },
                                        ),
                                        SizedBox(
                                          width: 9.w,
                                        ),
                                        GestureDetector(
                                            onTap: () async {
                                              await EmpProfileDialoges
                                                  .showDanger(
                                                context: context,
                                                ref: ref,
                                                text:
                                                    "Are you sure to delete the Experience?",
                                                onPressed: () {
                                                  final old = user
                                                      .employee?.expertises
                                                      ?.where((element) =>
                                                          element.createdAt !=
                                                          e.createdAt)
                                                      .toList();
                                                  ref
                                                      .read(userAuthNotifer
                                                          .notifier)
                                                      .updateUser(user.copyWith(
                                                          employee: user
                                                              .employee
                                                              ?.copyWith(
                                                                  expertises:
                                                                      old)));
                                                },
                                              );
                                            },
                                            child: Assets.icons.png.delete
                                                .image()),
                                      ],
                                    ),
                                  ))
                              .toList() ??
                          []),
                  title: Row(
                    children: [
                      Text(
                        "My Experiences",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            context.push(EmpAddExpertisePage.routePath,
                                extra: null);
                          },
                          child: Assets.icons.png.plusCirlce.image())
                    ],
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

              Consumer(builder: (context, ref, child) {
                return ExpandedListWidget(
                    body: Wrap(
                        children: user?.employee?.skills
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
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
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
                                          if (ref
                                              .watch(_showSkillDeleteProvider))
                                            GestureDetector(
                                              onTap: () async {
                                                await EmpProfileDialoges
                                                    .showDanger(
                                                  context: context,
                                                  ref: ref,
                                                  text:
                                                      "Are you sure to delete the Skill?",
                                                  onPressed: () {
                                                    final old = user
                                                        .employee?.skills
                                                        ?.where((element) =>
                                                            element != e)
                                                        .toList();
                                                    ref
                                                        .read(userAuthNotifer
                                                            .notifier)
                                                        .updateUser(user.copyWith(
                                                            employee: user
                                                                .employee
                                                                ?.copyWith(
                                                                    skills:
                                                                        old)));
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                Icons.close,
                                                size: 18.sp,
                                                color: Colors.white,
                                              ),
                                            )
                                        ],
                                      ),
                                    ))
                                .toList() ??
                            []),
                    title: Row(
                      children: [
                        Text(
                          "My Skills",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        GestureDetector(
                            onTap: () {
                              EmpProfileDialoges.showAddSkillsDialog(
                                  context: context, ref: ref);
                            },
                            child: Assets.icons.png.plusCirlce.image()),
                        SizedBox(
                          width: 10.w,
                        ),
                        Consumer(builder: (context, ref, child) {
                          return AnimatedCrossFade(
                              firstChild: EditIconWidget(
                                showText: false,
                                onTap: () {
                                  ref
                                      .read(_showSkillDeleteProvider.notifier)
                                      .state = true;
                                },
                              ),
                              secondChild: GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(_showSkillDeleteProvider.notifier)
                                        .state = false;
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 12.sp),
                                  )),
                              crossFadeState:
                                  ref.watch(_showSkillDeleteProvider)
                                      ? CrossFadeState.showSecond
                                      : CrossFadeState.showFirst,
                              duration: const Duration(milliseconds: 300));
                        })
                      ],
                    ));
              }),
              ExpandedListWidget(
                  body: Builder(builder: (context) {
                    // user?.ceritificates?.sort((a, b) => a.createdAt.compareTo(b.createdAt),);
                    return Column(
                        children: user?.employee?.ceritificates
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
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          EditIconWidget(
                                            showText: false,
                                            onTap: () {
                                              context.push(
                                                  EmpAddCertificatePage
                                                      .routePath,
                                                  extra: e);
                                            },
                                          ),
                                          SizedBox(
                                            width: 9.w,
                                          ),
                                          GestureDetector(
                                              onTap: () async {
                                                await EmpProfileDialoges
                                                    .showDanger(
                                                  context: context,
                                                  ref: ref,
                                                  text:
                                                      "Are you sure to delete the certificate?",
                                                  onPressed: () {
                                                    final old = user
                                                        .employee?.ceritificates
                                                        ?.where((element) =>
                                                            element.createdAt !=
                                                            e.createdAt)
                                                        .toList();
                                                    ref
                                                        .read(userAuthNotifer
                                                            .notifier)
                                                        .updateUser(user.copyWith(
                                                            employee: user
                                                                .employee
                                                                ?.copyWith(
                                                                    ceritificates:
                                                                        old)));
                                                  },
                                                );
                                              },
                                              child: Assets.icons.png.delete
                                                  .image()),
                                        ],
                                      ),
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
                      GestureDetector(
                          onTap: () {
                            context.push(EmpAddCertificatePage.routePath,
                                extra: null);
                          },
                          child: Assets.icons.png.plusCirlce.image())
                    ],
                  )),
              ExpandedListWidget(
                  body: Column(
                      children: user?.employee?.language
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
                                  trailing: GestureDetector(
                                      onTap: () async {
                                        await EmpProfileDialoges.showDanger(
                                          context: context,
                                          ref: ref,
                                          text:
                                              "Are you sure to delete the Language?",
                                          onPressed: () async {
                                            final old =
                                                (user.employee?.language ?? [])
                                                    .where((element) =>
                                                        element != e)
                                                    .toList();

                                            await ref
                                                .read(userAuthNotifer.notifier)
                                                .updateUser(user.copyWith(
                                                    employee: user.employee
                                                        ?.copyWith(
                                                            language: old)));
                                          },
                                        );
                                      },
                                      child: Assets.icons.png.delete.image())))
                              .toList() ??
                          []),
                  title: Row(
                    children: [
                      Text(
                        "My Languages",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                          onTap: () async {
                            await EmpProfileDialoges.showAddLanguageDialog(
                                context: context, ref: ref);
                          },
                          child: Assets.icons.png.plusCirlce.image())
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
