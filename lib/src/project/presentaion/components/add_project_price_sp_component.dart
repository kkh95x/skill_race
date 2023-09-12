import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/components/specialization_component.dart';
import 'package:skill_race/src/project/application/new_project_form.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
class AddProjectPriceSpComponent extends ConsumerWidget{
  const AddProjectPriceSpComponent({super.key});
  @override
  Widget build(BuildContext context,WidgetRef  ref) {
     final formGroup=ref.read(newProjectFromProvider);
     final controll=ScrollController();
    return SingleChildScrollView(
      controller: controll,
      child: Column(
        children: [
           ReactiveFormConsumer(builder: (context, _, child) {
                    final price = formGroup.control(NewProjectKeys.price).value as double? ??10.0;
                  
                    return Row(
                      children: [
                        Text(
                          "Price: ",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            padding: EdgeInsets.all(5.sp),
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 3)),
                            child: Text(" $price \$")),
                       
                       
                      ],
                    );
                  }),
                   ReactiveFormConsumer(builder: (context, formGroup, child) {
                    final price = formGroup.control(NewProjectKeys.price).value as double? ??10.0;
                    return Slider(
                      value: price,
                      onChanged: (value) {
                        formGroup.control(NewProjectKeys.price).value=value.roundToDouble();
                      },
                      max: 10000,
                      min: 10,
                      divisions: 9900,
                    );
                  }),
                  SizedBox(
                    height: 30.h,
                  ),
           ReactiveFormConsumer(builder: (context, formGroup, child){
              
              
                  return SpecilaizationComponent(formGroup: formGroup,controlName: NewProjectKeys.specialization,supControll: NewProjectKeys.subSpecialization,
                  onPress:(){
                    controll.animateTo(controll.position.maxScrollExtent, duration:const Duration(milliseconds: 300), curve: Curves.linear);
                  }
                  );
                }
              ),
        ],
      ),
    );
  }
}