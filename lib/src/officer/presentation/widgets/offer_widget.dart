import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/presentation/components/bottom_offer_controll_component.dart';
import 'package:skill_race/src/project/presentaion/widgets/profile_pic_name_spcial.dart';

class OfferCardWidget extends StatelessWidget {
  const OfferCardWidget({super.key,required this.officer});
 final Officer officer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      // padding: EdgeInsets.all(10.sp),
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
      // color: Theme.of(context).colorScheme.onTertiaryContainer.withOpacity(.7),
    //  gradient: LinearGradient(colors: [
    //                           Theme.of(context).colorScheme.secondary,
    //                           Theme.of(context).colorScheme.primary
    //                         ]),
      borderRadius: BorderRadius.circular(5.r)
    
     ),
      child: Card(
        
        child: Container(padding: EdgeInsets.all(10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProfilePicNameSpcialWidget(userId: "7tYD0LME3YQTfwMgkifGdzcrRSr2"),
    
                Text("\$${officer.price}",style: Theme.of(context).textTheme.bodyLarge,),
    
    
              ],
    
            ),
            Text(officer.title,style: Theme.of(context).textTheme.bodyLarge),
            if(officer.deadLine!=null)
            Row(
              children: [
                Icon(Icons.lock_clock,color: Theme.of(context).colorScheme.primaryContainer,size: 16.sp,),
                SizedBox(width: 2.w,)
    ,                Text("${officer.deadLine!.year}/${officer.deadLine!.month}/${officer.deadLine!.day}",style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer),),
              ],
            ),
             if(officer.description!=null)
                Text(officer.description!,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primaryContainer),),
          const Spacer(),
          BottomOfferControllComponent(officer: officer)
          
          ],
               ),
        ),
      ),
    );
  }
}