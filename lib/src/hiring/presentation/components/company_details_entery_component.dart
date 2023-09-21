import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';

class CompanyDeatilsEnteryComponent extends StatelessWidget {
  const CompanyDeatilsEnteryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 24.w,
                    ),
                    child: Text(
                        "We recommend to you from among the skills present on the application, who are expected to be suitable for your request and are ready to work by communicating with them from our support team according to the required data",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "companyName",
                    title: "Company Name",
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "companyField",
                    title: "Company Field",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ReactiveFormConsumer(builder: (context, formGroup, child) {
                    return DropdownSearchWidget(
                        title: "Country",
                        placeholder: "",
                        formControlName: "country",
                        onTap: () {
                          formGroup.control("city").reset();
                        },
                        item: AllCountres.countries.keys.toList());
                  }),
                  SizedBox(
                    height: 20.h,
                  ),
                  ReactiveFormConsumer(builder: (context, formGroup, child) {
                    final city = formGroup.control("country").value ?? "";
                    return DropdownSearchWidget(
                        title: "City",
                        placeholder: "",
                        formControlName: "city",
                        item: AllCountres.countries[city] ?? []);
                  }),
        ],
    
      ),
    );
  }
}