import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';

import '../../../../theme.dart';

class ListTileComponent extends ConsumerWidget {
  const ListTileComponent({
    super.key,
    required this.date,
    required this.amount,
    required this.description,
    required this.type,
  });
  final DateTime date;
  final String amount;
  final String description;
  final String type;

  @override
  Widget build(BuildContext context, ref) {

    return Card(
      child: Padding(
        padding:  EdgeInsets.all(7.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SizedBox(width: 10.w
                ,),
                Text(
                  '\$$amount',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  type,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall?.copyWith(color:Theme.of(context).colorScheme.primaryContainer )
                     
                ),
                Text(
                 ref.read(chatDateFormat(date)),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall?.copyWith(color:Theme.of(context).colorScheme.primaryContainer )
                     
                     
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
