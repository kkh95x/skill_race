import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';

class BottomNeedEmployeControllComponent extends StatelessWidget {
  const BottomNeedEmployeControllComponent({super.key,required this.controller,required this. onPressedSaved,
  required this.isEnd,required this.isFirst
  });
  final PageController controller;
 final void Function() onPressedSaved;
 final bool isFirst;
 final bool isEnd;
  @override
  Widget build(BuildContext context) {
    
    return Material(elevation: 7,
      child: SizedBox(
        height: 100.h,
        // padding: EdgeInsets.all(10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
            
              onPressed:isFirst?null: () {
              controller.previousPage(duration:const Duration(milliseconds: 200), curve: Curves.linear);
            }, child: const Text("Back")),
    
            AnimatedCrossFade(
              firstChild:TextButton(onPressed: () {
            controller.nextPage(duration:const Duration(milliseconds: 200), curve: Curves.linear);
    
              
            }, child: const Text("Next")) , secondChild: DynamicButton(onPressed: onPressedSaved
            ,isExpandedWidth: false,title: "Send Need Employees",), crossFadeState:isEnd?CrossFadeState.showSecond:CrossFadeState .showFirst , duration:const Duration(milliseconds: 200))
            
          ],
        ),
      ),
    );
  }
}