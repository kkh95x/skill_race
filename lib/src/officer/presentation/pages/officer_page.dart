import 'package:auto_size_text/auto_size_text.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/financial_account/presenation/pages/balance_page.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/officer/presentation/components/request_offer_component.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';
List<Widget> _pages=const [RequestOfferComponent(),SizedBox(),SizedBox()];
List<String> _tabs=["Request","Active","Complete"];
class OffersPage extends ConsumerWidget {
  const OffersPage({super.key});
  static String get routeName => "offers-page";
  static String get routePath => "/$routeName";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(userAuthNotifer).state;
    final isAuth = authState == AuthStatus.auth;

    if (isAuth) {
      return Scaffold(
        body: Column(
          children: [
            appBarComponent(title: "Offers", context: context),
            _buildHeader(context),
            const  Divider(),
            SizedBox(height: 20.h,),
            Expanded(
              child: ContainedTabBarView(
                  tabBarProperties: TabBarProperties(
            
                      unselectedLabelColor: Theme.of(context).colorScheme.primaryContainer,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                    
                      labelColor: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      height: 40.h,

                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        // color:  Theme.of(context).colorScheme.primary,
                        gradient: LinearGradient(colors: [
                          Theme.of(context).colorScheme.secondary,
                          Theme.of(context).colorScheme.primary
                        ]),
                      )),
                  onChange: (p0) {},
                  callOnChangeWhileIndexIsChanging: true,
                  tabs: [
                    for (int i = 0; i < _pages.length; i++)
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        height: 37.h,
                        child: AutoSizeText(
                          _tabs[i],
                          maxLines: 1,
                          minFontSize: 8.sp,
                          stepGranularity: 1.sp,
                          maxFontSize: 12.sp,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                  ],
                  views: _pages),
            )
          ],
        ),
      );
    }
    return const NeedSginUpComponent();
  }

  Container _buildHeader(BuildContext context) {
    return Container(
            // margin: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                // gradient: LinearGradient(colors: [
                //   Theme.of(context).colorScheme.secondary,
                //   Theme.of(context).colorScheme.primary,
                // ]
                // )
                // color: 
                // Theme.of(context).colorScheme.primary
                ),
            padding: EdgeInsets.all(5.sp),
            height: 150.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            "Earnings",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                        ),
                        Text(
                          "\$${356.5}K",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontSize: 24.sp,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.push(BalancePage.routePath);
                          },
                          child: Container(
                            padding: EdgeInsets.all(5.sp),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(20.r),
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primaryContainer
                                //     .withOpacity(.4)),
                            child: Text(
                              "See details",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color:Colors.black26
                                   ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // const VerticalDivider(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            "Projects",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                        ),
                        Text(
                          "127",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  fontSize: 30.sp,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.sp),
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20.r),
                          //     color: Theme.of(context)
                          //         .colorScheme
                          //         .primaryContainer
                          //         .withOpacity(.4)),
                          child: Text(
                            "5 Active Projects",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(color:Colors.black26
                                   ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
