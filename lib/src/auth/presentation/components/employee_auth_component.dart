import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/presentation/components/specialization_component.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class EmpEntryPageComponent extends ConsumerWidget {
  const EmpEntryPageComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AuthPageTemplateComponent(
      title: "Employee",
      addLogo: false,
      child: ReactiveFormConsumer(builder: (context, formGroup, child) {
        return Column(children: [
          DynamicInput(
            control: UserFormkeys.empName,
            placeholder: "",
            title: "Name",
          ),
          SizedBox(
            height: 20.h,
          ),
          DropdownSearchWidget(
            search: false,
              title: "Job Type",
              placeholder: "",
              formControlName: UserFormkeys.empWorkType,
              item: jobType),
          SizedBox(
            height: 20.h,
          ),
          DropdownSearchWidget(
              title: "Country",
              placeholder: "",
              formControlName: UserFormkeys.empCountry,
              item: AllCountres.countries.keys.toList()),
          SizedBox(
            height: 20.h,
          ),
          ReactiveFormConsumer(builder: (context, formGroup, child) {
            final city = formGroup.control(UserFormkeys.empCountry).value ?? "";
            return DropdownSearchWidget(
                title: "City",
                placeholder: "",
                formControlName: UserFormkeys.empCity,
                item: AllCountres.countries[city] ?? []);
          }),
          SizedBox(
            height: 20.h,
          ),
          SpecilaizationComponent(
              formGroup: formGroup,
              controlName: UserFormkeys.empSpecialization,
              supControll: UserFormkeys.empSupSpecialization),
          SizedBox(
            height: 40.h,
          ),
          ReactiveFormConsumer(
            builder: (context, formGroup, child)  {
              return DynamicButton(
                isDisabled: !formGroup.control(UserFormkeys.empForm).valid,
                title: "Save",
                onPressed: ()async {
                await ref.read(userAuthNotifer.notifier).createUser(context);

                },
              );
            }
          ),
          SizedBox(
            height: 40.h,
          ),
        ]);
      }),
    );
  }
}
