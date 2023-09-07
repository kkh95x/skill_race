import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/starts_rating_widget.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/images/presentation/components/images_post_component.dart';
import 'package:skill_race/src/posts/presentaion/widgets/profile_pic_name_spcial.dart';
import 'package:skill_race/src/video/presentation/widgets/post_video_card.dart';

enum PostType { video, photos }

class PostWidget extends ConsumerWidget {
  const PostWidget(
      {super.key,
      required this.countents,
      required this.picUrl,
      required this.price,
      required this.specialization,
      required this.starts,
      required this.postType,
      required this.username});
  final String username;
  final String specialization;
  final String picUrl;
  //if Video is list from one item
  final List<String> countents;
  final double price;
  final double starts;
  final PostType postType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            ProfilePicNameSpcialWidget(
                imageUrl: picUrl, special: specialization, usename: username),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Stack(
          children: [
            if (postType == PostType.video)
              PostVideoCard(url: countents.first)
            else
              ImagesPostComponent(imagesUrl: countents),
            Positioned(
                bottom: 10.h,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(left: 16.w, bottom: 20.h, right: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${price.toInt()} \$",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          StarsRatingWidget(rating: starts)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Assets.icons.png.send.image(),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Chat",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Assets.icons.png.saved.image(),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Save",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }
}
