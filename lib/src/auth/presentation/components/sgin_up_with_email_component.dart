import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class SginUpWithEmailComponent extends ConsumerWidget {
  const SginUpWithEmailComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.read(userFormProvider());

    return AuthPageTemplateComponent(
      title: "Sgin Up",
      child: ReactiveForm(
        formGroup: form.control("sginUp") as FormGroup,
        child: Column(
          children: [
            const Text(
              "Enter your  Email Address for the verfication process, we will send 4 digit code to your number.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            DynamicInput(
                title: "E-mail", control: "email", placeholder: "Email"),
            SizedBox(
              height: 10.h,
            ),
            // DynamicInput(
            // title: "Phone Number",
            // control: "phone",
            // type: Type.phoneNumber,
            // placeholder: "Phone Number"),
            SizedBox(
              height: 36.h,
            ),
            ReactiveFormConsumer(builder: (context, formGroup, child) {
              return DynamicButton(
                title: "Sgin Up",
                isDisabled: !formGroup.valid,
                onPressed: () {},
              );
            }),

            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
