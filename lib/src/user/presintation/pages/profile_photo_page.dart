


import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/images/presentation/widgets/image_profile_card.dart';
import 'package:skill_race/src/user/application/get_may_photos.dart';

class ProfilePhotosPage extends ConsumerWidget {
  const ProfilePhotosPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ref.watch(getMyPhotosProvider)
    .when(data: (data) {
      return GridView.builder(gridDelegate: 
      
     const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
     itemCount: data.length,
     itemBuilder: (context, index) {
        return ImageProfileCard(
          onTap: () {
 showImageViewer(
                      context,
                        CachedNetworkImageProvider(data[index].url) ,
                      swipeDismissible: true,
                      
                      doubleTapZoomable: true);          },

              onTapMore: () {
                showBottomSheet(context: context, builder: (context) {
                  return Text("More list soon....");
                },);
              },
          price: data[index].price,
          starts: data[index].starts,
          title: data[index].title,
          url: data[index].url,

        );
      },);
    }, error: (error, stackTrace) => Center(child: Text("Error:${error.toString()}"),), loading: () =>const Center(child: CircularProgressIndicator(),),);
  
  }
}