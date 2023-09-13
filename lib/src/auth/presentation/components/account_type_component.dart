import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';

import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/auth/presentation/widgets/acount_type_widget.dart';
import 'package:skill_race/src/user/application/user_form.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

class AccountTypeComponent extends ConsumerWidget {
  const AccountTypeComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controll = PageController();

    final form = ref.read(userFormProvider());
    return ReactiveForm(
      formGroup: form,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controll,
        itemCount: 2,
        itemBuilder: (context, index) {
          return [
            AccountTypeCard(
                onTapSubButton: () {
                  controll.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.linear);
                },
                ontTapMainiButton: () {
                  form.control(UserFormkeys.accountType).value =
                      AccountType.employe;
                  ref
                      .read(userAuthNotifer.notifier)
                      .changeState(AuthStatus.empolyeeEntery);
                },
                supButtonTitle: "Need To Hiring An Employee?\nSign in To Hiring",
                buttonTypes: ButtonTypes.primary,
                title: "Need A Job?",
                subTitle:
                    "You can find more than one job through our app easily.",
                imagePath: Assets.images.png.pagOne.path,
                buttonTitle: "Sign in as an Employee"),
            AccountTypeCard(
                onTapSubButton: () {
                  controll.previousPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.linear);
                },
                ontTapMainiButton: () {
                  form.control(UserFormkeys.accountType).value =
                      AccountType.hiring;
                  ref
                      .read(userAuthNotifer.notifier)
                      .changeState(AuthStatus.hiringEntry);
                },
                supButtonTitle: "Need A Job?\nSign in as an Employee",
                buttonTypes: ButtonTypes.primary,
                title: "Need To Hiring An Employee?",
                subTitle:
                    "You can choose the right employee to provide the service you need.",
                imagePath: Assets.images.png.paeTow.path,
                buttonTitle: "Sign in To Hiring")
          ][index];
        },
      ),
    );
  }
}
