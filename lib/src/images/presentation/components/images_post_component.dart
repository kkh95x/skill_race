import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
final isImageChanged=StateProvider<int>((ref) => 0);
class ImagesPostComponent extends ConsumerWidget {
  const ImagesPostComponent({super.key,required this.imagesUrl});

  final List<String> imagesUrl;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final controller=PageController();
    return SizedBox(
     height: 250.h,
     
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          PageView.builder(
            pageSnapping: true,
            padEnds: true,
            controller: controller,
             onPageChanged: (value) {
               ref.read(isImageChanged.notifier).state=value;         },
            itemCount: imagesUrl.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: GestureDetector(
                    onTap: () {
                      showImageViewerPager(

                      context,
                     MultiImageProvider(imagesUrl.map((e) => CachedNetworkImageProvider(e)).toList(),
                     initialIndex: ref.read(isImageChanged)), 
                      immersive: true,
                      useSafeArea: true,      
                                      
                        //  CachedNetworkImageProvider(recipes[index].images?.first??"") ,
                      swipeDismissible: true,                      
                      doubleTapZoomable: true);
                    },
                    child: CachedNetworkImage(imageUrl: imagesUrl[index],fit: BoxFit.cover,
                    placeholder: (context, url) =>Container(color: Colors.black,child:const Center(child: CircularProgressIndicator()),),
                    alignment: Alignment.center,)),
                ),
              );
            },),

        Positioned(
          bottom: 0,left: 0,right: 0,
          child: Consumer(
            builder: (context, ref, child)  {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i=0;i<imagesUrl.length;i++)
                  if(ref.watch(isImageChanged)==i)
                   Icon(Icons.circle,color: Colors.white,size: 10.sp,)
                  else
                   Icon(Icons.circle,color: Colors.grey,size: 10.sp,)
                ],
              );
            }
          )
          
          )
        ],
      ),
    );
  }
}