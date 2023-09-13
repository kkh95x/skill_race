import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class HiringAuthComponent extends ConsumerWidget {
  const HiringAuthComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return AuthPageTemplateComponent(
      title: "Hiring",
      addLogo: false,
      child: ReactiveFormConsumer(builder: (context, formGroup, child) {
        return Column(children: [
          SizedBox(
            height: 20.h,
          ),
          DynamicInput(
            control: UserFormkeys.hiringName,
            placeholder: "",
            title: "Name",
          ),
          SizedBox(
            height: 20.h,
          ),
          DynamicInput(
            control: UserFormkeys.hiringPhoneNumber,
            type: Type.phoneNumber,
            placeholder: "",
            title: "Phone",
          ),
          SizedBox(
            height: 20.h,
          ),
          DynamicInput(
            control: UserFormkeys.hiringCompanyName,
            placeholder: "",
            title: "Company Name",
          ),

          SizedBox(
            height: 20.h,
          ),
          
          DropdownSearchWidget(
              title: "Country",
              onTap: () {
                formGroup.control(UserFormkeys.hiringCity).value=null;
              },
              placeholder: "",
              formControlName: UserFormkeys.hiringCountry,
              item: AllCountres.countries.keys.toList()),
          SizedBox(
            height: 20.h,
          ),
          ReactiveFormConsumer(builder: (context, formGroup, child) {
            final city = formGroup.control(UserFormkeys.hiringCountry).value ?? "";
            return DropdownSearchWidget(
                title: "City",
                placeholder: "",
                formControlName: UserFormkeys.hiringCity,
                item: AllCountres.countries[city] ?? []);
          }),

          SizedBox(
            height: 40.h,
          ),
          ReactiveFormConsumer(
            builder: (context, formGroup, child) {
              return DynamicButton(
                isDisabled: !formGroup.control(UserFormkeys.hiringForm).valid,
                title: "Save",
                onPressed: ()async {
                  await ref.read(userAuthNotifer.notifier).createUser(context);

                },
              );
            }
          ),
          SizedBox(
            height: 20.h,
          ),
        ]);
      }),
    );
  }
}
