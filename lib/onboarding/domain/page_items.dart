import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_race/core/presentation/widget/gardian_text_color.dart';
import 'package:skill_race/gen/assets.gen.dart';

final onboardingPagesList = <Widget>[
  getOnboardingPageTemplate(title: "Need A Job?",subTitle: "subTitle",imagePath: Assets.images.png.pagOne.path),
    getOnboardingPageTemplate(title: "pageTow",subTitle: "subTitle",imagePath: Assets.images.png.paeTow.path),
      getOnboardingPageTemplate(title: "pageThree",subTitle: "subTitle",imagePath: Assets.images.png.pageThree.path)


];

Widget getOnboardingPageTemplate({required String title,required String subTitle,required String imagePath}) {
  return Column(
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 35.w,
          vertical: 44.h,
        ),
        child: Image.asset(imagePath),
      ),
       Align(
         alignment: Alignment.center,
         child: 
         SizedBox(
          height: 25.h,
           child: GaridanTextColorWiget(
                           text:  Text(
           
                       title ,
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Colors.white,
                          fontSize: 17.sp,
                          height:0.68,
         
               fontWeight: FontWeight.w700
                       )
                          
                     ),
           ),
         ),
         
       ),
       Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 45.0.w, vertical: 10.0.h),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'You can find more than one job through our app easily.',
            style:TextStyle(
fontSize : 12.sp,
fontWeight :FontWeight.w400,
color : const Color(0xFF767676),),

            textAlign: TextAlign.center,
          ),
        ),
      ),
     
    ],
  );
}
