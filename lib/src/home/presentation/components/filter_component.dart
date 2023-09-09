import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/home/application/filter_form.dart';
import '../../../../collections.dart';

class FilterComponent extends ConsumerWidget {
  const FilterComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.read(filterFormProvider);
    return ReactiveForm(
      formGroup: form,
      child: WillPopScope(
        onWillPop: () async {
          context.pop();
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                    SizedBox(
                      width: 90.w,
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
                        "Filter",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80.h,
                ),

                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return Wrap(
                    children: interestsList.map((e) {
                      final isSelected =
                          form.control(FilterFormKeys.intersts).value == e;
                      return GestureDetector(
                        onTap: () {
                              form.control(FilterFormKeys.intersts).value =
                                  e; //FilterFormKeys.subIntersts
                              form
                                  .control(FilterFormKeys.subIntersts)
                                  .reset();
                            },
                        child: Container(
                          padding: EdgeInsets.all(10.sp),
                          margin: EdgeInsets.all(5.sp),
                          decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                gradient: isSelected
                                    ? LinearGradient(
                                        colors: [
                                          Theme.of(context).colorScheme.secondary,
                                          Theme.of(context).colorScheme.primary
                                        ], // Define your gradient colors
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      )
                                    : null,
                                border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    style: BorderStyle.solid)),
                          child: Text(
                                e,
                                style: TextStyle(
                                    color: isSelected ? Colors.white : null),
                              ),
                        ),
                      );
                    }).toList(),
                  );
                  //   return const DropdownSearchWidget(
                  //     title: "Specialization",
                  //     placeholder: "intersts",
                  //     formControlName: FilterFormKeys.intersts,
                  //     item:interestsList );
                }),
                SizedBox(
                  height: 20.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  bool isOpen;
                  final interst =
                      form.control(FilterFormKeys.intersts).value as String?;
                  List<String>? supList;
                  if (interst != null) {
                    supList = supInterestsList[interst];
                    if (supList != null) {
                      isOpen = true;
                    } else {
                      isOpen = false;
                    }
                  } else {
                    isOpen = false;
                  }
                  return AnimatedCrossFade(
                    crossFadeState: isOpen
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 300),
                    secondChild: const SizedBox(),
                    firstChild: DropdownSearchWidget(
                        title: "Sub Specialization",
                        placeholder: "details",
                        formControlName: FilterFormKeys.subIntersts,
                        item: supList ?? []),
                  );
                }),
                SizedBox(
                  height: 30.h,
                ),
                ReactiveFormConsumer(builder: (context, _, child) {
                  final from = form.control(FilterFormKeys.priceFrom).value;
                  final to = form.control(FilterFormKeys.priceTo).value;
                  return Row(
                    children: [
                      Text(
                        "Price: From",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          padding: EdgeInsets.all(5.sp),
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 3)),
                          child: Text(" $from \$")),
                      Text(
                        "To",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          padding: EdgeInsets.all(5.sp),
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 3)),
                          child: Text(" $to \$")),
                    ],
                  );
                }),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  final from = form.control(FilterFormKeys.priceFrom).value;
                  final to = form.control(FilterFormKeys.priceTo).value;
                  return RangeSlider(
                    values: RangeValues(from, to),
                    onChanged: (value) {
                      form.control(FilterFormKeys.priceFrom).value =
                          value.start.floorToDouble();
                      form.control(FilterFormKeys.priceTo).value =
                          value.end.floorToDouble();
                    },
                    max: 1000,
                    min: 10,
                    divisions: 990,
                  );
                }),
                SizedBox(
                  height: 30.h,
                ),
                // ReactiveFormConsumer(
                //   builder:(context, _, child)  {

                //     final from=form.control(FilterFormKeys.durationFrom).value;
                //     final to=form.control(FilterFormKeys.durationTo).value;
                //     return Row(
                //       children: [
                //         Text("Duration: From",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),),
                //         Container(
                //           padding: EdgeInsets.all(5.sp),
                //           margin: EdgeInsets.symmetric(horizontal: 10.w),
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10.r),
                //             border: Border.all(color: Theme.of(context).colorScheme.primary,width: 3)
                //                              ),
                //           child:  Text(" $from sec")),
                //         Text("To",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),),
                //                         Container(
                //                            padding: EdgeInsets.all(5.sp),
                //           margin: EdgeInsets.symmetric(horizontal: 10.w),
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10.r),
                //             border: Border.all(color: Theme.of(context).colorScheme.primary,width: 3)
                //                              ),
                //                           child: Text(" $to sec")),

                //       ],
                //     );
                //   }
                // ),
                // ReactiveFormConsumer(
                //   builder: (context, formGroup, child)  {
                //      final from=form.control(FilterFormKeys.durationFrom).value as int;
                //     final to=form.control(FilterFormKeys.durationTo).value as int;
                //     return RangeSlider(
                //      values: RangeValues(from.toDouble() , to.toDouble()),
                //      onChanged: (value) {

                //       form.control(FilterFormKeys.durationFrom).value=value.start.toInt();
                //       form.control(FilterFormKeys.durationTo).value=value.end.toInt();

                //      },
                //      max: 60,
                //      min: 0,
                //      divisions: 55,
                //      );
                //   }
                // ),
                SizedBox(
                  height: 50.h,
                ),
                DynamicButton(
                  isDisabled: !form.valid,
                  title: "Search",
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
