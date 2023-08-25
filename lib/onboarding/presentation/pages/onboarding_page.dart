import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/core/presentation/widget/gardian_text_color.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/onboarding/application/onboarding_providers.dart';
import 'package:skill_race/onboarding/domain/page_items.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:skill_race/testi_page.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});
  static String get routeName => "onboarding";
  static String get routePath => "/$routeName";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = PageController(initialPage: 0);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _skipButton(context: context),
            Expanded(
              child: OnBoardingAnimation(
                pages: onboardingPagesList,
                controller: pageController,
                indicatorActiveDotColor: Theme.of(context).colorScheme.primary,
                indicatorDotHeight: 7.0,
                indicatorDotWidth: 7.0,
                indicatorInActiveDotColor:
                    Theme.of(context).colorScheme.secondary,
                indicatorType: IndicatorType.expandingDots,
                indicatorPosition: IndicatorPosition.bottomCenter,
                indicatorActiveColorOverride: (index) =>
                    Theme.of(context).colorScheme.primary,
              ),
            ),
            _next(context, () {
              pageController.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.linear);
            }),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
       
      ),
    );
  }

  Widget _skipButton({required BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(top: 34.h, right: 17.w),
      child: InkWell(
        onTap: () {
          context.push(TestPage.routePath);
        },
        child: Text('Skip',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFACACAC),
            )),
      ),
    );
  }

  Widget _signupButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 66.h, right: 16.w),
      height: 22.h,
      child: InkWell(
        onTap: () {
          context.push(TestPage.routePath);
        },
        child: const GaridanTextColorWiget(
          text: Text(
            'Sign up',
          ),
        ),
      ),
    );
  }

  Widget _next(BuildContext ref, Function() setIndex) {
    return Container(
      margin: EdgeInsets.only(top: 66.h, right: 16.w),
      height: 22.h,
      child: InkWell(
        onTap: () {
          setIndex.call();
        },
        child:  GaridanTextColorWiget(
          text: Text(
            'Next',
            style: TextStyle(
                         color: Colors.white,
                          fontSize: 15.sp,
                          height:0.68,
         
               fontWeight: FontWeight.w500
                       )
                          
                      ,
          ),
        ),
      ),
    );
  }
}