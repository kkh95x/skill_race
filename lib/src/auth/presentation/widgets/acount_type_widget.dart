import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/core/presentation/widget/gardian_text_color.dart';

class AccountTypeCard extends StatelessWidget {
  const AccountTypeCard({super.key,
  required this.onTapSubButton,
  required this.ontTapMainiButton,
  required this.supButtonTitle, required this.title,required this. subTitle,required this. imagePath,required this.buttonTitle,required this.buttonTypes});
  final String  title;
  final String subTitle;
  final String imagePath;
  final String buttonTitle;
  final String supButtonTitle;
  final void Function() onTapSubButton;
  final void Function() ontTapMainiButton;
  
final ButtonTypes buttonTypes;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

   
      padding: EdgeInsets.all(10.sp),
      margin: EdgeInsets.all(20.sp),
      
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),),
      child: Column(
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
            // height: 45.h,
             child: GaridanTextColorWiget(
                             text:  Text(
             
                         title ,
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Colors.white,
                            fontSize: 17.sp,
                            // height:0.68,
           
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
              subTitle,
             
              style:TextStyle(
    fontSize : 12.sp,
    fontWeight :FontWeight.w400,
    color : const Color(0xFF767676),),
    
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 50.h,),
       DynamicButton(
        type: buttonTypes,
        title: buttonTitle,
        onPressed: () {
          ontTapMainiButton.call();
         
       },),
               SizedBox(height: 20.h,),
               Row(
                 children: [

                  const Expanded(child: 
                  Divider()),
                  SizedBox(width: 10.w,),
                   const Text("Or"),
                                     SizedBox(width: 10.w,),

                    const Expanded(child: 
                  Divider()),
                 ],
               ),
                SizedBox(height: 10.h,),

       TextButton(onPressed: () {
         onTapSubButton.call();
       }, child: Text(supButtonTitle,textAlign: TextAlign.center,))
      ],
      ),
    );
  }
}