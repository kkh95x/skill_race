import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/core/presentation/widget/gardian_text_color.dart';

import 'package:skill_race/onboarding/domain/page_items.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:skill_race/src/auth/presentation/pages/auth_flow_page.dart';
import 'package:skill_race/testi_page.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});
  static String get routeName => "onboarding";
  static String get routePath => "/$routeName";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    final isGetStarted=ValueNotifier<bool>(false); 
    final pageController = PageController(initialPage: 0);
    pageController.addListener(() {
    if(  pageController.positions.isNotEmpty&& pageController.position.maxScrollExtent==pageController.position.pixels ){
      isGetStarted.value=true;
    }else{
            isGetStarted.value=false;

    }
    },);
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
            SizedBox(height: 34.h,),
            ValueListenableBuilder(
              valueListenable: isGetStarted,
              builder:(context, value, child)  {
                return Visibility(
                  visible:value,
                  child:SizedBox(
                    width:value?null:20.w,
                    child: DynamicButton(
                      
                      title:"Get Started",
                      onPressed: (){
                         SharedPreferences.getInstance().then((value) => value.setBool("isB", true));
                                    context.pushReplacement(AuthFlowPage.routePath);
                                    
                      
                    }),
                  )
                
                 );
              }
            ),
            ValueListenableBuilder(
              valueListenable: isGetStarted,
              builder:(context, value, child)  {
                return Visibility(
                  visible:!value,
                  child:_next(context, () {
              pageController.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.linear);
            
            }),
                
                 );
              }
            ),
            
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
      margin: EdgeInsets.only( right: 17.w),
      child: InkWell(
        onTap: () {
          context.pushReplacement(AuthFlowPage.routePath);
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
