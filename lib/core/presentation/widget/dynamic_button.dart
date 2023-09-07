import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DynamicButton extends ConsumerWidget {
  const DynamicButton({
    super.key,
    this.title,
    required this.onPressed,
    this.radius = 4,
    this.height = 50,
    this.isExpandedWidth=true,

    this.type=ButtonTypes.primary,
    this.isDisabled = false,
    this.style,
  });

  final String? title;
  final VoidCallback onPressed;
  final double radius;
  final double height;
  final ButtonTypes type;
  final bool isDisabled;
  final TextStyle? style;
  final bool  isExpandedWidth;


  @override
  Widget build(BuildContext context, ref) {


    switch(type){

      case ButtonTypes.primary:
        return Container(
       width:isExpandedWidth? MediaQuery.of(context).size.width:null,
          height: height.h,
          // margin: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary], // Define your gradient colors
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20.r), // Adjust as needed
          ),
      child: ElevatedButton(
          style:ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent, // Make the button transparent
              foregroundColor:Theme.of(context).colorScheme.onPrimary, // Text color
            ),onPressed: isDisabled ? null : onPressed,
          child: Text(
            title ?? '',
            style: style ??
                Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400
                    ),
          )),
    );
    case ButtonTypes.secondary:
     return Container(
       width:isExpandedWidth? MediaQuery.of(context).size.width:null,
          height: height.h,
          padding: EdgeInsets.all(0.5.sp),
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
           gradient: LinearGradient(
          colors:  [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary],),
          borderRadius: BorderRadius.circular(20.r)
          ),
      child:ElevatedButton(
          style:ElevatedButton.styleFrom(
         backgroundColor: Theme.of(context).colorScheme.onPrimary
          ),
            onPressed: isDisabled ? null : onPressed,
          child:ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary], // Define your gradient colors
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
            child: Text(
              title ?? '',
              style: style ??
                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400
                      ),
            ),
          )),
    );

    }
   
  }

}

enum ButtonTypes {
  primary,
  secondary,
 
}

