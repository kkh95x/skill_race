import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/auth/presentation/widgets/otp_widget.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class ConfirmCodeComponent extends ConsumerWidget {
  const ConfirmCodeComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.read(userFormProvider());

    return AuthPageTemplateComponent(
      addLogo: false,
      title: "Confirm Code",
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            SizedBox(height: 45.h,),
            const Text(
             "Enter 4 digit code thatyou received on your phone number.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 48.h,
            ),
            OTPWidget(formControlle: "confirmCode"),
            // DynamicInput(
            //     title: "E-mail", control: "confirmCode", placeholder: "Email"),
            SizedBox(
              height: 10.h,
            ),
           
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
