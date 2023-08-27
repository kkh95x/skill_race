import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/gen/assets.gen.dart';

class AuthPageTemplateComponent extends StatelessWidget {
  const AuthPageTemplateComponent({super.key,required this.child,required this.title,this.onTap,this.addLogo=true});
  final Widget child;
  final String title;
  final bool addLogo;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10.w,10.h,10.w,10.h),              
                height: 44.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface    
                  
                  ),
                child: Row(
                  children: [
                    InkWell(
                      onTap:onTap ,
                      child: Icon(Icons.arrow_back_ios,size: 24.sp,),
                      
                    ),
                  const  Spacer(),
                    Text(
                      
                     title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.sp,
                      height: 0.77.sp,
                      color: Theme.of(context).colorScheme.onPrimaryContainer),),
                                      const  Spacer(),
          
                  ],
                ),
              ),
              if(addLogo)
              Container(
                margin: EdgeInsets.only(top: 40.h,bottom: 36.h),
                width: 94.r,
                height: 94.r,
                alignment: Alignment.center,
                decoration: BoxDecoration(shape: BoxShape.circle,
                gradient: LinearGradient(colors: [Theme.of(context).colorScheme.secondary, Theme.of(context).colorScheme.primary,]),),
                
                child: Assets.icons.png.logoWhite.image(
                   width: 60.w,
                fit: BoxFit.scaleDown
                )),
          
              Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w,),
              
                child: child),
                
        
            ],
          ),
        ),
      );
  }
}