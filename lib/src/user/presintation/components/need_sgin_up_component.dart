

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';

class NeedSginUpComponent extends ConsumerWidget {
  const NeedSginUpComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ref.read(userUnAuthHelper(context));
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       DynamicButton(
        title: "Sgin up",
        onPressed: () {
         ref.read(userUnAuthHelper(context));
       },)
      ],
    );
  }
}