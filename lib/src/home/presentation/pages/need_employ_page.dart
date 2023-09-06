import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/collections.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';
import 'package:skill_race/src/home/application/need_employ_form.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';

class NeedEmpolyPage extends ConsumerWidget {
  const NeedEmpolyPage({super.key});
  static String get routeName => "need-employee";
  static String get routePath => "/$routeName";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final needEmpForm = ref.read(addEmployeFormProvider);
// "companyName"
// "companyField"
// "country"
// "city"
// "specialization"
// "subSpecialization"
// "exerienceLevel"
// "jobType"
// "numberOfEmployees"
// "typeOfTravelVisa"
// "workingHours"
// "salary"
// "durationOfTheContract"
// "weekends"
// "age"
// "gender"
    return Scaffold(
      appBar: appBarComponent(title: "Need Employees", context: context) ,
      body: ReactiveForm(
        formGroup: needEmpForm,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
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
                      item: AllCountres.countries.keys.toList());
                }),
                SizedBox(
                  height: 20.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  final city = needEmpForm.control("country").value ?? "";
                  return DropdownSearchWidget(
                      title: "City",
                      placeholder: "",
                      formControlName: "city",
                      item: AllCountres.countries[city] ?? []);
                }),
                SizedBox(
                  height: 20.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return const DropdownSearchWidget(
                      title: "Specialization",
                      placeholder: "",
                      formControlName: "specialization",
                      item: interestsList);
                }),
                SizedBox(
                  height: 20.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  bool isOpen;
                  final interst =
                      needEmpForm.control("specialization").value as String?;
                  List<String>? supList;
                  if (interst != null) {
                    supList = supInterestsList[interst];
                    if (supList != null) {
                      isOpen = true;
                    } else {
                      isOpen = false;
                    }
                  } else {
                    isOpen = false;
                  }
                  return Visibility(
                    visible: isOpen,
                    child: DropdownSearchWidget(
                        title: "Sub Specialization",
                        placeholder: "details",
                        formControlName: "subSpecialization",
                        item: supList ?? []),
                  );
                }),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return const DropdownSearchWidget(
                      title: "Exerience Level",
                      placeholder: "",
                      formControlName: "exerienceLevel",
                      item: exerienceLevel);
                }),
                SizedBox(
                  height: 20.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return const DropdownSearchWidget(
                      title: "Job Type",
                      placeholder: "",
                      formControlName: "jobType",
                      item: jobType);
                }),
                SizedBox(
                  height: 20.h,
                ),
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
                  control: "durationOfTheContract",
                  title: "Duration of the contract",
                ),
                SizedBox(
                  height: 20.h,
                ),
                DynamicInput(
                  placeholder: "",
                  autoFoucs: false,
                  control: "weekends",
                  title: "Weekends",
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
                      item: ["Male", "Female"]);
                }),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Assets.icons.png.plus.image(),
                      SizedBox(
                        width: 10.w,
                      ),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.secondary,
                              Theme.of(context).colorScheme.primary
                            ], // Define your gradient colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "Add another Specialization",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DynamicButton(
                  onPressed: () {},
                  title: "Send",
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
