import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';

import 'package:skill_race/src/hiring/application/need_employ_form.dart';
import 'package:skill_race/src/hiring/data/firestore_need_empolyee_repository.dart';
import 'package:skill_race/src/hiring/domain/need_employe_request.dart';
import 'package:skill_race/src/hiring/presentation/components/bottom_cotroll_component.dart';
import 'package:skill_race/src/hiring/presentation/components/company_details_entery_component.dart';
import 'package:skill_race/src/hiring/presentation/components/more_details_componen.dart';
import 'package:skill_race/src/hiring/presentation/components/specialization_emp_component.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';

class NeedEmpolyPage extends ConsumerWidget {
  const NeedEmpolyPage({super.key});
  static String get routeName => "need-employee";
  static String get routePath => "/$routeName";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final needEmpForm = ref.read(addNeedEmployeFormProvider);
     final controller=PageController();
     const pages= [
      CompanyDeatilsEnteryComponent(),
      SpecializationNeedEmpComponent(),
      MoreDetailsNeedEmpComponent()

     ];
     final refreshBottom=ValueNotifier(0);
    return Scaffold(
      appBar: appBarComponent(title: "Need Employees", context: context) ,
      body: ReactiveForm(
        formGroup: needEmpForm,
        child: Column(
          children: [
            
            Expanded(
              
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
              controller: controller,
              itemCount: pages.length,
              onPageChanged: (value) {
                refreshBottom.value=value;
              },
              itemBuilder: (context, index) {
              return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: pages[index],
              );
            },)),
         
            ValueListenableBuilder(
              valueListenable:refreshBottom ,
              builder: (context, value, child)  {
                return BottomNeedEmployeControllComponent(
                  isEnd: value==pages.length-1,
                  isFirst: value==0,
                  controller: controller, onPressedSaved: ()async {
final companyName= needEmpForm.control("companyName").value;
final companyField= needEmpForm.control("companyField").value;

final country= needEmpForm.control("country").value;

final city= needEmpForm.control("city").value;

final specializationList= needEmpForm.control("specializationList").value;

final exerienceLevel= needEmpForm.control("exerienceLevel").value;

final jobType= needEmpForm.control("jobType").value;

final skills= needEmpForm.control("skills").value;
final numberOfEmployees= needEmpForm.control("numberOfEmployees").value;
final typeOfTravelVisa= needEmpForm.control("typeOfTravelVisa").value;
final workingHours= needEmpForm.control("workingHours").value;
final salary= needEmpForm.control("salary").value;
final durationOfTheContract= needEmpForm.control("durationOfTheContract").value;
final weekends= needEmpForm.control("weekends").value;
final age= needEmpForm.control("age").value;
final gender= needEmpForm.control("gender").value;

final needEmployeeRequest=NeedEmployeeRequest(hiringId: ref.read(userAuthNotifer).currentUser?.id??"", createdAt: DateTime.now(),
age: age,
city: city,
companyFiled: companyField,
companyName: companyName,
country: country,
durationMonthOfContract: durationOfTheContract,
exerienceLevel: exerienceLevel,
gender: gender,
jobType: jobType,
numberOfEmployees: numberOfEmployees,
salary: salary,
skills: skills,
specializations: specializationList,
typeOfTravelVisa: typeOfTravelVisa,
weekends: weekends,
workingHours: workingHours

);

BotToast.showLoading();

                  await ref.read(needEmployeedRequestRepositoryProvider).create(needEmployeeRequest);
  BotToast.closeAllLoading();
  if(context.mounted){
  context.pop();

  }
  BotToast.showText(text: "Saved");
  needEmpForm.reset();
                },);
              }
            ),
            // DynamicButton(
            //   onPressed: () {},
            //   title: "Send",
            // ),
         
          ],
        ),
      ),
    );
  }
}
