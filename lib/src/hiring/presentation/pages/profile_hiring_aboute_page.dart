import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/hiring/application/hiring_dialoges.dart';
import 'package:skill_race/src/user/presintation/widgets/edit_icon_widget.dart';
import 'package:skill_race/src/user/presintation/widgets/expanded_list_widget.dart';

class ProfileHiringAboutePage extends ConsumerWidget {
  const ProfileHiringAboutePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user=ref.watch(userAuthNotifer).currentUser;
    return   SingleChildScrollView(
      physics:const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:16.0.w,vertical: 10.h),
        child: Column(
          children: [
            ExpandedListWidget(
              title: const Text("Compay Details"),
                    body: ListTile(title: Text(user?.hiring?.companyName??"Company Name"),
                     titleTextStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                    subtitle: Text(
                                user?.hiring?.companyField??"Company Field"),
                            subtitleTextStyle: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer),
                                        
                                        trailing:EditIconWidget(
                                          showText: false,
                                          onTap: () {
                                            HiringDialogs.showEditCompany(context, ref);
                                          },
                                        )
      
                            
                                        )),

          ExpandedListWidget(
              title: const Text("Payment Method"),
                    body: Column(
                      children: [
                        ListTile(
                                                contentPadding: EdgeInsets.zero,

                          title:const Text("Master Card(**2565)"),
                         titleTextStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                        subtitle:const Text(
                                    "Default Payment"),
                                subtitleTextStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer),
                                            
                                            trailing:Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                EditIconWidget(
                                                  showText: false,
                                                  onTap: () {
                                                   BotToast.showText(text: "Soon");
                                                  },
                                                ),
                                                SizedBox(width: 10.w,),
                                                 Assets.icons.png.delete.image(),

                                              ],
                                            )
      
                                
                                            ),
                                             ListTile(
                                                                    contentPadding: EdgeInsets.zero,

                                              title:const Text("Vodafone Cash (**235)"),
                         titleTextStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                        subtitle:const Text(
                                    "Another Payment"),
                                subtitleTextStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer),
                                            
                                            trailing:Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                EditIconWidget(
                                                  showText: false,
                                                  onTap: () {
                                                   BotToast.showText(text: "Soon");
                                                  },
                                                ),
                                                                                                SizedBox(width: 10.w,),

                                                 Assets.icons.png.delete.image(),

                                              ],
                                            )
      
                                
                                            ),
                      ],
                    ))
          ],
        ),
      ),
    );
  }
}