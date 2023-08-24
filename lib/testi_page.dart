import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});
  static String get routName => "test";
  static String get routePath => "/$routName";

  @override
  Widget build(BuildContext context) {
    final form = FormGroup({"text": FormControl<String>()});
    return Scaffold(
      body: SafeArea(
        child: ReactiveForm(
          formGroup: form,
          child: Container(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              children: [
                DynamicButton(
                  type: ButtonTypes.secondary,
                  title: "reset",
                  onPressed: () {},
                ),
                DynamicInput(placeholder: "placeholder",control: "text",title: "job",type: Type.text,),
                DropdownSearchWidget(formControlName: "text", placeholder: "placeholder", item: ["item","dsf","SDfsdf"],title: "job",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
