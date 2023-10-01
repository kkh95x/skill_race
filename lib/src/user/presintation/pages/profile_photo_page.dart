


import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/src/images/application/get_my_images_provider.dart';
import 'package:skill_race/src/images/presentation/widgets/image_profile_card.dart';
import 'package:skill_race/src/project/presentaion/pages/singe_project_page.dart';

class ProfilePhotosPage extends ConsumerWidget {
  const ProfilePhotosPage({super.key,required this.userId});
final String userId;
  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final controller=ScrollController();
    controller.addListener(() { 

      if(controller.position.pixels==controller.position.maxScrollExtent){
        ref.read(getMyImagesPagenation(userId).notifier).fetchNextBatch();
      }
    });
    return ref.watch(getMyImagesPagenation(userId)).when(data: (recipes) {
      if(recipes.isEmpty){
        return const Center(child: Text("No Projects Found"),);
      }

      return   GridView.builder(gridDelegate: 
      
     const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
     itemCount: recipes.length,
     itemBuilder: (context, index) {
        return ImageProfileCard(
          onTap: () {
            context.push(SingleProjectPage.routePath,extra: recipes[index].id);
//  showImageViewerPager(
//                       context,
//                      MultiImageProvider(recipes.map((e) => CachedNetworkImageProvider(e.images?.first??"")).toList()), 
//                       immersive: true,
//                       useSafeArea: true,                      
//                         //  CachedNetworkImageProvider(recipes[index].images?.first??"") ,
//                       swipeDismissible: true,                      
//                       doubleTapZoomable: true);
                      
                      
                      }
                      ,

              onTapMore: () {
                showBottomSheet(context: context, builder: (context) {
                  return Container(height: 500.h,width: MediaQuery.of(context).size.width,alignment: Alignment.center, child: Text("More list soon...."));
                },);
              },
          price: recipes[index].price,
          starts: recipes[index].stars,
          title: recipes[index].title,
          url: recipes[index].images?.first??"",

        );
      },);
      
    }, loading: () {
            return const Center(child:  CircularProgressIndicator(),);

    }, error: (e, stk) {
            return  Center(child:  Text(e.toString()),);

      
    }, onGoingLoading: (recipes) {
      
      return GridView.builder(gridDelegate: 
      
     const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
     itemCount: recipes.length+1,
     itemBuilder: (context, index) {
      if(index==recipes.length){
        return const Center(child: CircularProgressIndicator(),);
      }
        return ImageProfileCard(
          onTap: () {
 showImageViewer(
                      context,
                        CachedNetworkImageProvider(recipes[index].images?.first??"") ,
                      swipeDismissible: true,
                      
                      doubleTapZoomable: true);          },

              onTapMore: () {
                showBottomSheet(context: context, builder: (context) {
                  return Container(height: 500.h,width: MediaQuery.of(context).size.width,alignment: Alignment.center, child: const Text("More list soon...."));
                },);
              },
          price: recipes[index].price,
          starts: recipes[index].stars,
          title: recipes[index].title,
          url: recipes[index].images?.first??"",

        );
      },);
    }, onGoingError: (recipes, e, stk) {
      return GridView.builder(gridDelegate: 
      
     const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
     itemCount: recipes.length+1,
     itemBuilder: (context, index) {
      if(index==recipes.length){
        return  Center(child: Text(e.toString()),);
      }
        return ImageProfileCard(
          onTap: () {
 showImageViewer(
                      context,
                        CachedNetworkImageProvider(recipes[index].images?.first??"") ,
                      swipeDismissible: true,
                      
                      doubleTapZoomable: true);          },

              onTapMore: () {
                showBottomSheet(context: context, builder: (context) {
                  return Container(height: 500.h,width: MediaQuery.of(context).size.width,alignment: Alignment.center, child: const Text("More list soon...."));
                },);
              },
          price: recipes[index].price,
          starts: recipes[index].stars,
          title: recipes[index].title,
          url: recipes[index].images?.first??"",

        );
      },);
      
    },);
    
   
  }
}