import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';

class MoreDetailsNeedEmpComponent extends StatelessWidget {
  const MoreDetailsNeedEmpComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "numberOfEmployees",
                    title: "Number Of Employees",
                    type: Type.number,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "typeOfTravelVisa",
                    title: "Type Of Travel Visa",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "workingHours",
                    title: "Working Hours",
                    type: Type.number,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "salary",
                    title: "Salary",
                    type: Type.number,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    type: Type.double,
                    control: "durationOfTheContract",
                    title: "Duration: Months of contract",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    type: Type.number,
                    control: "weekends",
                    title: "Number of Weekends",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DynamicInput(
                    placeholder: "",
                    autoFoucs: false,
                    control: "age",
                    title: "Age",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ReactiveFormConsumer(builder: (context, formGroup, child) {
                    return const DropdownSearchWidget(
                        title: "Gender",
                        placeholder: "",
                        search: false,
                        formControlName: "gender",
                        item: ["Both","Male", "Female"]);
                  }),
        ],
      ),
    );
  }
}