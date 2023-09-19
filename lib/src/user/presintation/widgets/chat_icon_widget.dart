import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/gen/assets.gen.dart';

class ChatIconWidget extends StatelessWidget {
  const ChatIconWidget({super.key,this.onTap,this.showText=true});
  final void Function()?onTap;
  final bool showText;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
            children: [
              Assets.icons.png.chatGarden.image(),
              if(showText)
              SizedBox(width: 3.w,),
              if(showText)
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
                          },child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),)),
            ],
          ),
      ),
    );
  }
}