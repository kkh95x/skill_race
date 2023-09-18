import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/hiring/application/hiring_dialoges.dart';
import 'package:skill_race/src/hiring/domain/single_specialization.dart';

class SpecializationNeedEmpComponent extends ConsumerWidget {
  const SpecializationNeedEmpComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ReactiveFormConsumer(builder: (context, formGroup, child) {
          //   return DropdownSearchWidget(
          //       title: "Specialization",
          //       placeholder: "",
          //       onTap: () {
          //         formGroup.control("subSpecialization");
          //       },
          //       formControlName: "specialization",
          //       item: interestsList);
          // }),
          // SizedBox(
          //   height: 20.h,
          // ),
          // ReactiveFormConsumer(builder: (context, formGroup, child) {
          //   bool isOpen;
          //   final interst =
          //       formGroup.control("specialization").value as String?;
          //   List<String>? supList;
          //   if (interst != null) {
          //     supList = supInterestsList[interst];
          //     if (supList != null) {
          //       isOpen = true;
          //     } else {
          //       isOpen = false;
          //     }
          //   } else {
          //     isOpen = false;
          //   }
          //   return AnimatedCrossFade(
          //     crossFadeState: isOpen?CrossFadeState.showFirst:CrossFadeState.showSecond,
          //     firstChild: DropdownSearchWidget(
          //         title: "Sub Specialization",
          //         placeholder: "details",
          //         formControlName: "subSpecialization",
          //         item: supList ?? []),
          //         secondChild:const SizedBox(),
          //         duration:const Duration(milliseconds: 200),
          //   );
          // }),

          ReactiveFormConsumer(builder: (context, formGroup, child) {
            return const DropdownSearchWidget(
                title: "Exerience Level",
                placeholder: "",
                formControlName: "exerienceLevel",
                item: exerienceLevel);
          }),
          SizedBox(
            height: 20.h,
          ),
          ReactiveFormConsumer(builder: (context, formGroup, child) {
            return const DropdownSearchWidget(
                title: "Job Type",
                placeholder: "",
                formControlName: "jobType",
                item: jobType);
          }),
          SizedBox(
            height: 20.h,
          ),

          Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  Text(
                    "Specialization",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              )),

          ReactiveFormConsumer(builder: (context, formGroup, child) {
            final listSp = formGroup.control("specializationList").value
                    as List<SingleSpecilazation>? ??
                [];
            return Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: AnimatedCrossFade(
                        firstChild: Wrap(
                          children: listSp
                              .map((e) => Container(
                                    padding: EdgeInsets.all(10.sp),
                                    margin: EdgeInsets.all(5.sp),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        gradient: LinearGradient(colors: [
                                          Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          Theme.of(context).colorScheme.primary
                                        ])),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: AutoSizeText(
                                            wrapWords: true,
                                            maxLines: 1,
                                            softWrap: true,
                                            minFontSize: 4.sp,
                                            stepGranularity: 1.sp,
                                            maxFontSize: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            "${e.specialization} - ${e.subSpecialization} ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(color: Colors.white),
                                          ),
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              listSp.remove(e);
                                              formGroup
                                                  .control("specializationList")
                                                  .value = [...listSp];
                                            },
                                            child: Icon(
                                              Icons.close,
                                              size: 18.sp,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                        secondChild: Center(
                          child: TextButton(
                              onPressed: () {
                                HiringDialogs.showAddSpecialzation(
                                    context, ref);
                              },
                              child: const Text("Add Specialization")),
                        ),
                        crossFadeState: listSp.isEmpty
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 200))),
                AnimatedCrossFade(
                  secondChild: const SizedBox(),
                  crossFadeState: (listSp.length < 6&&listSp.isNotEmpty)
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 200),
                  firstChild: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        HiringDialogs.showAddSpecialzation(context, ref);
                      },
                      child: Row(
                        children: [
                          Assets.icons.png.plus.image(),
                          SizedBox(
                            width: 10.w,
                          ),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [
                                  Theme.of(context).colorScheme.secondary,
                                  Theme.of(context).colorScheme.primary
                                ], // Define your gradient colors
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ).createShader(bounds);
                            },
                            child: Text(
                              "Add another Specialization",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        SizedBox(height: 20.h,),



          //////////////////////////////////////////////////////////////////////////////////////////////
          Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  Text(
                    "Skills",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              )),

          ReactiveFormConsumer(builder: (context, formGroup, child) {
            final listSkills = formGroup.control("skills").value
                    as List<String>? ??
                [];
            return Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: AnimatedCrossFade(
                        firstChild: Wrap(
                          children: listSkills
                              .map((e) => Container(
                                    padding: EdgeInsets.all(10.sp),
                                    margin: EdgeInsets.all(5.sp),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        gradient: LinearGradient(colors: [
                                          Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          Theme.of(context).colorScheme.primary
                                        ])),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: AutoSizeText(
                                            wrapWords: true,
                                            maxLines: 1,
                                            softWrap: true,
                                            minFontSize: 4.sp,
                                            stepGranularity: 1.sp,
                                            maxFontSize: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            e,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(color: Colors.white),
                                          ),
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              listSkills.remove(e);
                                              formGroup
                                                  .control("skills")
                                                  .value = [...listSkills];
                                            },
                                            child: Icon(
                                              Icons.close,
                                              size: 18.sp,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                        secondChild: Center(
                          child: TextButton(
                              onPressed: () {
                                HiringDialogs.showAddSkills(
                                    context, ref);
                              },
                              child: const Text("Add Skill")),
                        ),
                        crossFadeState: listSkills.isEmpty
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 200))),
                AnimatedCrossFade(
                  secondChild: const SizedBox(),
                  crossFadeState: (listSkills.length < 6 && listSkills.isNotEmpty)
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 200),
                  firstChild: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        HiringDialogs.showAddSkills(context, ref);
                      },
                      child: Row(
                        children: [
                          Assets.icons.png.plus.image(),
                          SizedBox(
                            width: 10.w,
                          ),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [
                                  Theme.of(context).colorScheme.secondary,
                                  Theme.of(context).colorScheme.primary
                                ], // Define your gradient colors
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ).createShader(bounds);
                            },
                            child: Text(
                              "Add another Skills",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
