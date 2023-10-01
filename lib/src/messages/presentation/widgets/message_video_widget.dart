

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';
import 'package:video_player/video_player.dart';

class MessageVideoWidget extends ConsumerStatefulWidget {
  const MessageVideoWidget({super.key,required this.url, this.isMine=true,required this.createdAt,required this.isSeen});
  final String url;
  final bool isMine;
  final DateTime createdAt;
  final bool isSeen;

  @override
 ConsumerState<MessageVideoWidget> createState() => _MessageImageWidgetState();
}

class _MessageImageWidgetState extends ConsumerState<MessageVideoWidget> {
  late  VideoPlayerController _controller;
  @override
  void initState() {
    _controller=VideoPlayerController.networkUrl(Uri.parse(widget.url));
     _controller.initialize().then((value) {
      setState(() {
        
      });
     });
   

    super.initState();
  }
  bool _isVisble=true;
  @override
  Widget build(BuildContext context) {

    return Row(
     mainAxisAlignment: widget.isMine?MainAxisAlignment.start:MainAxisAlignment.end,
      children: [
        ClipRRect(
          
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.h,horizontal: 9.w),
            padding: EdgeInsets.all(12.sp),
            constraints: BoxConstraints(maxWidth: 256.w,maxHeight: 500.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color:widget.isMine? Theme.of(context).colorScheme.surface:null,
              gradient:widget.isMine?null: LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary])
            ),            
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:widget.isMine?CrossAxisAlignment.end: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                                borderRadius: BorderRadius.circular(18.r),

                  child:_controller.value.isInitialized?
                  
                  GestureDetector(
                     onTap: () {
                      _isVisble=true;
                         if (_controller.value.isPlaying){
                           _controller.pause();

                          }else{
                            _controller.play();
                          }

                          setState(() {
                            
                          });
                          if(_isVisble){
                          Future.delayed(const Duration(seconds: 2)).then((value) {
                            _isVisble=false;
                            setState(() {
                              
                            });
                          });}
                        },
                    child: AspectRatio(aspectRatio: _controller.value.aspectRatio,
                    child: Stack(
                      children: [
                        VideoPlayer(_controller),
                  
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            top: 0,
                            child: Visibility(
                              visible: _isVisble,
                              child: Icon(_controller.value.isPlaying?Icons.pause: Icons.play_arrow,color: Theme.of(context).colorScheme.surface,)),
                          )
                      ],
                    ),),
                  ):const Center(child:  CircularProgressIndicator(),),
                ),
                SizedBox(height: 10.h,),
                  Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                Text("video - ${ref.read(chatDateFormat(widget.createdAt))}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: widget.isMine?Colors.black.withOpacity(.5):Theme.of(context).colorScheme.onPrimary.withOpacity(.5),fontSize: 10.sp),),
                    if(widget.isMine)
                    SizedBox(width: 5.w,),
                     if(widget.isMine)
                     Icon(Icons.done_all,size: 18.sp,color: widget.isSeen?Colors.blue:null,)
                    ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
