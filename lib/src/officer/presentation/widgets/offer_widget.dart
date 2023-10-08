import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/presentation/components/bottom_offer_controll_component.dart';
import 'package:skill_race/src/project/presentaion/widgets/profile_pic_name_spcial.dart';
import 'package:url_launcher/url_launcher.dart';

class OfferCardWidget extends StatelessWidget {
  const OfferCardWidget({super.key, required this.officer});
  final Officer officer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfilePicNameSpcialWidget(
                      userId: "7tYD0LME3YQTfwMgkifGdzcrRSr2"),
                  Text(
                    "\$${officer.price}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              Text(officer.title, style: Theme.of(context).textTheme.bodyLarge),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    size: 16.sp,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "${officer.updateAt.year}/${officer.updateAt.month}/${officer.updateAt.day}",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primaryContainer),
                  ),
                  if (officer.deadLine != null)
                    Text(
                      " - ${officer.deadLine!.year}/${officer.deadLine!.month}/${officer.deadLine!.day}",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color:
                              Theme.of(context).colorScheme.primaryContainer),
                    ),
                ],
              ),
              if (officer.description != null)
                Text(
                  officer.description!,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer),
                ),
              if (officer.link != null)
              ...[  
                SizedBox(height: 5.h,),
                GestureDetector(
                  onTap: () async {
                    final uri = Uri.parse(officer.link!);

                    BotToast.showLoading();
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri,
                          mode: LaunchMode.externalApplication);
                    } else {
                      // can't launch url
                      BotToast.showText(text: "Error in the url");
                    }
                    BotToast.closeAllLoading();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.open_in_new,
                        color: Theme.of(context).colorScheme.primary,
                        size: 16.sp,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "Open The Link",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      )
                    ],
                  ),
                ),],
              const Spacer(),
              BottomOfferControllComponent(officer: officer)
            ],
          ),
        ),
      ),
    );
  }
}
