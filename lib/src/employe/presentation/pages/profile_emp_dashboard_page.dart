


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/user/presintation/widgets/expanded_list_widget.dart';

class ProfileEmpDashboardPage extends StatelessWidget {
  const ProfileEmpDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
child: Container(
  padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h
  ),
  child:   Column(
  
    children: [
  
      ExpandedListWidget(
  
                  title: Row(
  
                    children: [
  
                      const Text("My Offers "),
  
                      Text(
  
                        "(5 Offers)",
  
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  
                            color:
  
                                Theme.of(context).colorScheme.primaryContainer),
  
                      )
  
                    ],
  
                  ),
  
                  body: Column(
  
                    children: [
  
                      ListTile(
  
                          contentPadding: EdgeInsets.zero,
  
                          title: const Text("Project Title"),
  
                          titleTextStyle: Theme.of(context)
  
                              .textTheme
  
                              .bodyMedium
  
                              ?.copyWith(
  
                                  fontSize: 12.sp, fontWeight: FontWeight.w500),
  
                          subtitle: const Text("Name of Client"),
  
                          subtitleTextStyle: Theme.of(context)
  
                              .textTheme
  
                              .bodySmall
  
                              ?.copyWith(
  
                                  color: Theme.of(context)
  
                                      .colorScheme
  
                                      .primaryContainer),
  
                          trailing: Text(
  
                            "Pending",
  
                            style: Theme.of(context)
  
                                .textTheme
  
                                .bodyMedium
  
                                ?.copyWith(
  
                                    fontSize: 12.sp,
  
                                    color: const Color(0xffFFDC27)),
  
                          )),
  
                      ListTile(
  
                        contentPadding: EdgeInsets.zero,
  
                        title: const Text("Project Title"),
  
                        titleTextStyle: Theme.of(context)
  
                            .textTheme
  
                            .bodyMedium
  
                            ?.copyWith(
  
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
  
                        subtitle: const Text("Name of Client"),
  
                        subtitleTextStyle: Theme.of(context)
  
                            .textTheme
  
                            .bodySmall
  
                            ?.copyWith(
  
                                color: Theme.of(context)
  
                                    .colorScheme
  
                                    .primaryContainer),
  
                        trailing: Text(
  
                          "Accepted",
  
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  
                              fontSize: 12.sp,
  
                              color: Theme.of(context).colorScheme.surfaceTint),
  
                        ),
  
                      ),
  
                      ListTile(
  
                        contentPadding: EdgeInsets.zero,
  
                        title: const Text("Project Title"),
  
                        titleTextStyle: Theme.of(context)
  
                            .textTheme
  
                            .bodyMedium
  
                            ?.copyWith(
  
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
  
                        subtitle: const Text("Name of Client"),
  
                        subtitleTextStyle: Theme.of(context)
  
                            .textTheme
  
                            .bodySmall
  
                            ?.copyWith(
  
                                color: Theme.of(context)
  
                                    .colorScheme
  
                                    .primaryContainer),
  
                        trailing: Text(
  
                          "Rejected",
  
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  
                              fontSize: 12.sp,
  
                              color: Theme.of(context).colorScheme.error),
  
                        ),
  
                      )
  
                    ],
  
                  )),
  
              ExpandedListWidget(
  
                  isExpandedBody: true,
  
                  title: Row(
  
                    children: [
  
                      const Text("Current Projects "),
  
                      Text(
  
                        "(2 Projects)",
  
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  
                            color:
  
                                Theme.of(context).colorScheme.primaryContainer),
  
                      )
  
                    ],
  
                  ),
  
                  body: Container(
  
                    padding: EdgeInsets.symmetric(vertical: 10.h),
  
                    child: Row(
  
                      crossAxisAlignment: CrossAxisAlignment.start,
  
                      children: [
  
                        Expanded(
  
                          child: Column(
  
                            children: [
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:
  
                                    const BoxDecoration(color: Colors.white),
  
                                height: 39.h,
  
                                child: AutoSizeText(
  
                                  "Project Name",
  
                                  minFontSize: 10.sp,
  
                                  maxLines: 1,
  
                                  maxFontSize: 12.sp,
  
                                  stepGranularity: 1.sp,
  
                                  style: Theme.of(context)
  
                                      .textTheme
  
                                      .bodySmall
  
                                      ?.copyWith(
  
                                          color: Theme.of(context)
  
                                              .colorScheme
  
                                              .primaryContainer,
  
                                          fontSize: 12.sp),
  
                                ),
  
                              ),
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration: BoxDecoration(
  
                                    border: Border.all(color: Colors.white)),
  
                                height: 39,
  
                                child: SizedBox(
  
                                  child: ShaderMask(
  
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
  
                                    child: AutoSizeText("Project Name",
  
                                        minFontSize: 10.sp,
  
                                        maxLines: 1,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .onPrimary,
  
                                                fontSize: 12.sp)),
  
                                  ),
  
                                ),
  
                              ),
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration: BoxDecoration(
  
                                    border: Border.all(color: Colors.white)),
  
                                height: 39,
  
                                child: SizedBox(
  
                                  child: ShaderMask(
  
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
  
                                    child: AutoSizeText("Project Name",
  
                                        minFontSize: 10.sp,
  
                                        maxLines: 1,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .onPrimary,
  
                                                fontSize: 12.sp)),
  
                                  ),
  
                                ),
  
                              )
  
                            ],
  
                          ),
  
                        ),
  
                        Expanded(
  
                          child: Column(
  
                            children: [
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:
  
                                    const BoxDecoration(color: Colors.white),
  
                                height: 39.h,
  
                                child: AutoSizeText(
  
                                  "Start Date",
  
                                  minFontSize: 10.sp,
  
                                  overflow: TextOverflow.ellipsis,
  
                                  maxLines: 1,
  
                                  maxFontSize: 12.sp,
  
                                  stepGranularity: 1.sp,
  
                                  style: Theme.of(context)
  
                                      .textTheme
  
                                      .bodySmall
  
                                      ?.copyWith(
  
                                          color: Theme.of(context)
  
                                              .colorScheme
  
                                              .primaryContainer,
  
                                          fontSize: 12.sp),
  
                                ),
  
                              ),
  
                              Container(
  
                                  alignment: Alignment.center,
  
                                  decoration: BoxDecoration(
  
                                      border: Border.all(color: Colors.white)),
  
                                  height: 39.h,
  
                                  child: SizedBox(
  
                                    child: AutoSizeText("18/8/2022",
  
                                        minFontSize: 10.sp,
  
                                        overflow: TextOverflow.ellipsis,
  
                                        maxLines: 1,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .primaryContainer,
  
                                                fontSize: 12.sp)),
  
                                  )),
  
                              Container(
  
                                  alignment: Alignment.center,
  
                                  decoration: BoxDecoration(
  
                                      border: Border.all(color: Colors.white)),
  
                                  height: 39.h,
  
                                  child: SizedBox(
  
                                    child: AutoSizeText("18/8/2022",
  
                                        minFontSize: 10.sp,
  
                                        overflow: TextOverflow.ellipsis,
  
                                        maxLines: 1,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .primaryContainer,
  
                                                fontSize: 12.sp)),
  
                                  ))
  
                            ],
  
                          ),
  
                        ),
  
                        Expanded(
  
                          child: Column(
  
                            children: [
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:
  
                                    const BoxDecoration(color: Colors.white),
  
                                height: 39.h,
  
                                child: AutoSizeText(
  
                                  "End Date",
  
                                  minFontSize: 10.sp,
  
                                  overflow: TextOverflow.ellipsis,
  
                                  maxLines: 1,
  
                                  maxFontSize: 12.sp,
  
                                  stepGranularity: 1.sp,
  
                                  style: Theme.of(context)
  
                                      .textTheme
  
                                      .bodySmall
  
                                      ?.copyWith(
  
                                          color: Theme.of(context)
  
                                              .colorScheme
  
                                              .primaryContainer,
  
                                          fontSize: 12.sp),
  
                                ),
  
                              ),
  
                              Container(
  
                                  height: 39.h,
  
                                  alignment: Alignment.center,
  
                                  decoration: BoxDecoration(
  
                                      border: Border.all(color: Colors.white)),
  
                                  child: SizedBox(
  
                                    child: AutoSizeText("12/9/2022",
  
                                        minFontSize: 10.sp,
  
                                        overflow: TextOverflow.ellipsis,
  
                                        maxLines: 1,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .primaryContainer,
  
                                                fontSize: 12.sp)),
  
                                  )),
  
                              Container(
  
                                  height: 39.h,
  
                                  alignment: Alignment.center,
  
                                  decoration: BoxDecoration(
  
                                      border: Border.all(color: Colors.white)),
  
                                  child: SizedBox(
  
                                    child: AutoSizeText("12/9/2022",
  
                                        minFontSize: 10.sp,
  
                                        overflow: TextOverflow.ellipsis,
  
                                        maxLines: 1,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .primaryContainer,
  
                                                fontSize: 12.sp)),
  
                                  ))
  
                            ],
  
                          ),
  
                        ),
  
                        Expanded(
  
                          child: Column(
  
                            children: [
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:
  
                                    const BoxDecoration(color: Colors.white),
  
                                height: 39.h,
  
                                child: AutoSizeText(
  
                                  "Client Name",
  
                                  minFontSize: 10.sp,
  
                                  overflow: TextOverflow.ellipsis,
  
                                  maxLines: 1,
  
                                  maxFontSize: 12.sp,
  
                                  stepGranularity: 1.sp,
  
                                  style: Theme.of(context)
  
                                      .textTheme
  
                                      .bodySmall
  
                                      ?.copyWith(
  
                                          color: Theme.of(context)
  
                                              .colorScheme
  
                                              .primaryContainer,
  
                                          fontSize: 12.sp),
  
                                ),
  
                              ),
  
                              Container(
  
                                  height: 39.h,
  
                                  alignment: Alignment.center,
  
                                  decoration: BoxDecoration(
  
                                      border: Border.all(color: Colors.white)),
  
                                  child: SizedBox(
  
                                    child: ShaderMask(
  
                                      shaderCallback: (Rect bounds) {
  
                                        return LinearGradient(
  
                                          colors: [
  
                                            Theme.of(context)
  
                                                .colorScheme
  
                                                .secondary,
  
                                            Theme.of(context).colorScheme.primary
  
                                          ], // Define your gradient colors
  
                                          begin: Alignment.centerLeft,
  
                                          end: Alignment.centerRight,
  
                                        ).createShader(bounds);
  
                                      },
  
                                      child: AutoSizeText("Mohamed Hesham",
  
                                          minFontSize: 8.sp,
  
                                          overflow: TextOverflow.ellipsis,
  
                                          maxLines: 1,
  
                                          maxFontSize: 12.sp,
  
                                          stepGranularity: 1.sp,
  
                                          style: Theme.of(context)
  
                                              .textTheme
  
                                              .bodySmall
  
                                              ?.copyWith(
  
                                                  color: Theme.of(context)
  
                                                      .colorScheme
  
                                                      .onPrimary,
  
                                                  fontSize: 12.sp)),
  
                                    ),
  
                                  )),
  
                              Container(
  
                                  height: 39.h,
  
                                  alignment: Alignment.center,
  
                                  decoration: BoxDecoration(
  
                                      border: Border.all(color: Colors.white)),
  
                                  child: SizedBox(
  
                                    child: ShaderMask(
  
                                      shaderCallback: (Rect bounds) {
  
                                        return LinearGradient(
  
                                          colors: [
  
                                            Theme.of(context)
  
                                                .colorScheme
  
                                                .secondary,
  
                                            Theme.of(context).colorScheme.primary
  
                                          ], // Define your gradient colors
  
                                          begin: Alignment.centerLeft,
  
                                          end: Alignment.centerRight,
  
                                        ).createShader(bounds);
  
                                      },
  
                                      child: AutoSizeText("Mohamed Hesham",
  
                                          minFontSize: 8.sp,
  
                                          overflow: TextOverflow.ellipsis,
  
                                          maxLines: 1,
  
                                          maxFontSize: 12.sp,
  
                                          stepGranularity: 1.sp,
  
                                          style: Theme.of(context)
  
                                              .textTheme
  
                                              .bodySmall
  
                                              ?.copyWith(
  
                                                  color: Theme.of(context)
  
                                                      .colorScheme
  
                                                      .onPrimary,
  
                                                  fontSize: 12.sp)),
  
                                    ),
  
                                  ))
  
                            ],
  
                          ),
  
                        )
  
                      ],
  
                    ),
  
                  )
  
  
  
                  // DataTable(
  
  
  
                  //   border: TableBorder.all(color: Colors.white),
  
                  //   columns:[ DataColumn(label:
  
  
  
                  // Text("Project Name",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),)),
  
                  //  DataColumn(label: Text("Start Date",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),)),
  
                  //    DataColumn(label: Text("End Date",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),)),
  
                  //     DataColumn(label: Text("Assigned To",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),))
  
  
  
                  // ], rows: [
  
                  //   DataRow(cells: [
  
                  //     DataCell(Text("Project Name",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12))),
  
                  //     DataCell(Text("18/8/2022",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12))),
  
                  //      DataCell(Text("12/9/2022",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12))),
  
                  //      DataCell(Text("Mohamed Hesham",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12)))
  
  
  
                  //   ])
  
  
  
                  // ])
  
                  ),
  
  
  
                  /////////******************************************************************* */
  
                  ///
  
                  
  
  ExpandedListWidget(
  
                  isExpandedBody: true,
  
                  title: const Text("Earned "),
  
                  body: Container(
  
                    padding: EdgeInsets.symmetric(vertical: 10.h),
  
                    child: Row(
  
                      crossAxisAlignment: CrossAxisAlignment.start,
  
                      children: [
  
                        Expanded(
  
                          child: Column(
  
                            children: [
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:
  
                                     BoxDecoration(color: Colors.white,border: Border(right: BorderSide(color: Theme.of(context).colorScheme.onPrimary))),
  
                                height: 39.h,
  
                                child: AutoSizeText(
  
                                  "Pending",
  
                                  minFontSize: 10.sp,
  
                                  maxLines: 1,
  
                                  maxFontSize: 12.sp,
  
                                  stepGranularity: 1.sp,
  
                                  style: Theme.of(context)
  
                                      .textTheme
  
                                      .bodySmall
  
                                      ?.copyWith(
  
                                          color: Theme.of(context)
  
                                              .colorScheme
  
                                              .primaryContainer,
  
                                          fontSize: 12.sp),
  
                                ),
  
                              ),
  
                              Container(
  
                                  alignment: Alignment.center,
  
                                  
  
                                  height: 39.h,
  
                                  child: SizedBox(
  
                                    child: AutoSizeText("The transfer to Client bank account is pending until 2/9/22",
  
                                        minFontSize: 10.sp,
  
                                        textAlign: TextAlign.center,
  
                                        overflow: TextOverflow.ellipsis,
  
                                        maxLines: 2,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .primaryContainer,
  
                                                fontSize: 12.sp)),
  
                                  )),
  
                              Container(
  
                                alignment: Alignment.center,
  
                               
  
                                height: 39,
  
                                child: SizedBox(
  
                                  child: ShaderMask(
  
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
  
                                    child: AutoSizeText("35\$",
  
                                        minFontSize: 10.sp,
  
                                        maxLines: 1,
  
                                        maxFontSize: 14.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .onPrimary,
  
                                                fontSize: 12.sp)),
  
                                  ),
  
                                ),
  
                              ),
  
                              
  
                            ],
  
                          ),
  
                        ),
  
                        Expanded(
  
                          child: Column(
  
                            children: [
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:
  
                                    const BoxDecoration(color: Colors.white),
  
                                height: 39.h,
  
                                child: AutoSizeText(
  
                                  "Already Paid",
  
                                  minFontSize: 10.sp,
  
                                  overflow: TextOverflow.ellipsis,
  
                                  maxLines: 1,
  
                                  maxFontSize: 12.sp,
  
                                  stepGranularity: 1.sp,
  
                                  style: Theme.of(context)
  
                                      .textTheme
  
                                      .bodySmall
  
                                      ?.copyWith(
  
                                          color: Theme.of(context)
  
                                              .colorScheme
  
                                              .primaryContainer,
  
                                          fontSize: 12.sp),
  
                                ),
  
                              ),
  
                              Container(
  
                                  alignment: Alignment.center,
  
                                  decoration:const BoxDecoration(
  
                                    border: Border(left: BorderSide(color: Colors.white))),
  
                                  
  
                                  height: 39.h,
  
                                  child: SizedBox(
  
                                    child: AutoSizeText("Transfered To your Bank account",
  
                                        minFontSize: 10.sp,
  
                                        overflow: TextOverflow.ellipsis,
  
                                         textAlign: TextAlign.center,
  
  
  
                                        maxLines: 2,
  
                                        maxFontSize: 12.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .primaryContainer,
  
                                                fontSize: 12.sp)),
  
                                  )),
  
                              Container(
  
                                alignment: Alignment.center,
  
                                decoration:const BoxDecoration(
  
                                    border: Border(left: BorderSide(color: Colors.white))),
  
                                height: 39,
  
                                child: SizedBox(
  
                                  child: ShaderMask(
  
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
  
                                    child: AutoSizeText("150\$",
  
                                        minFontSize: 10.sp,
  
                                        maxLines: 1,
  
                                        maxFontSize: 14.sp,
  
                                        stepGranularity: 1.sp,
  
                                        style: Theme.of(context)
  
                                            .textTheme
  
                                            .bodySmall
  
                                            ?.copyWith(
  
                                                color: Theme.of(context)
  
                                                    .colorScheme
  
                                                    .onPrimary,
  
                                                fontSize: 12.sp)),
  
                                  ),
  
                                ),
  
                              ),
  
                              
  
                            ],
  
                          ),
  
                        ),
  
                        
  
                        
  
                      ],
  
                    ),
  
                  )
  
  
  
                  // DataTable(
  
  
  
                  //   border: TableBorder.all(color: Colors.white),
  
                  //   columns:[ DataColumn(label:
  
  
  
                  // Text("Project Name",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),)),
  
                  //  DataColumn(label: Text("Start Date",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),)),
  
                  //    DataColumn(label: Text("End Date",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),)),
  
                  //     DataColumn(label: Text("Assigned To",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12),))
  
  
  
                  // ], rows: [
  
                  //   DataRow(cells: [
  
                  //     DataCell(Text("Project Name",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12))),
  
                  //     DataCell(Text("18/8/2022",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12))),
  
                  //      DataCell(Text("12/9/2022",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12))),
  
                  //      DataCell(Text("Mohamed Hesham",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer,fontSize: 12)))
  
  
  
                  //   ])
  
  
  
                  // ])
  
                  ),
  
   ],
  
  ),
),
    );
  }
}