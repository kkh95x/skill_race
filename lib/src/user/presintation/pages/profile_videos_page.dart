import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_pinput/reactive_pinput.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/user/application/get_may_video_provider.dart';
import 'package:skill_race/src/video/presentation/pages/single_video_page.dart';
import 'package:skill_race/src/video/presentation/widgets/videos_profile_card_widget.dart';

class ProfileVideosPage extends ConsumerWidget {
  const ProfileVideosPage({super.key,required this.id});
  final String id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
   ;
    final controller = ScrollController();
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        ref.read(getMyVideoPagination(id).notifier).fetchNextBatch();
      }
    });
    return ref.watch(getMyVideoPagination(id)).when(
      data: (recipes) {
        if (recipes.isEmpty) {
          return const Center(
            child: Text("No Projects Found"),
          );
        }

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return VideoProfileCard(
              onTap: () {
                context.push(SingleVideoPage.routePath,
                    extra: recipes[index].id);
              },
              price: recipes[index].price,
              stars: recipes[index].stars,
              title: recipes[index].title,
              url: recipes[index].videoUrl ?? '',
              onTapMore: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        height: 500.h,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: const Text("More list soon...."));
                  },
                );
              },
            );
          },
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (e, stk) {
        return Center(
          child: Text(e.toString()),
        );
      },
      onGoingLoading: (recipes) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: recipes.length + 1,
          itemBuilder: (context, index) {
            if (index == recipes.length) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return VideoProfileCard(
              onTap: () {
                context.push(SingleVideoPage.routePath,
                    extra: recipes[index].id);
              },
              price: recipes[index].price,
              stars: recipes[index].stars,
              title: recipes[index].title,
              url: recipes[index].videoUrl ?? '',
              onTapMore: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        height: 500.h,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: const Text("More list soon...."));
                  },
                );
              },
            );
          },
        );
      },
      onGoingError: (recipes, e, stk) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: recipes.length + 1,
          itemBuilder: (context, index) {
            if (index == recipes.length) {
              return Center(
                child: Text(e.toString()),
              );
            }
            return VideoProfileCard(
              onTap: () {
                context.push(SingleVideoPage.routePath,
                    extra: recipes[index].id);
              },
              price: recipes[index].price,
              stars: recipes[index].stars,
              title: recipes[index].title,
              url: recipes[index].videoUrl ?? '',
              onTapMore: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        height: 500.h,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: const Text("More list soon...."));
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
