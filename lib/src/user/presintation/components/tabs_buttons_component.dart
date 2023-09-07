


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabButtonComponent extends StatelessWidget {
  const TabButtonComponent({super.key,required this.currentItems,required this.onSelectes,required this.tabs});
  final List<String> tabs;
  final String currentItems;
  final void Function(String selectdItem) onSelectes;
  @override
  Widget build(BuildContext context) {
    
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w,),

      child: Row(
        children: tabs.map((e) => Expanded(child: GestureDetector(
          onTap: () {
            onSelectes.call(e);
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            height: 37.h,
             decoration: BoxDecoration(gradient:e==currentItems? LinearGradient(
                              colors: [
                                Theme.of(context).colorScheme.secondary,
                                Theme.of(context).colorScheme.primary
                              ]):null,
                              
                              border:e==currentItems?null: Border(bottom: BorderSide(color:Theme.of(context).colorScheme.primaryContainer ),),
                              
                              ),
                              child: Text(e,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: e==currentItems?Colors.white:Theme.of(context).colorScheme.primaryContainer),),
          ),
        ))).toList()
    
      ),
    );
  }
}