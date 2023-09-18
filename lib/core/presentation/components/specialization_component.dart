import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/application/speicaization_provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/core/domain/specialization.dart';
class SpecilaizationComponent extends StatelessWidget {
  const SpecilaizationComponent({super.key,required  this.formGroup,this.disposeString, required this.controlName,required this.supControll,this.onPress});
  final FormGroup formGroup;
  final String controlName;
  final String supControll;
  final List<String>? disposeString;
  final Function()?  onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  Text(
                    "Specialization",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.black),
                  ),
                ],

              )),
        Consumer(builder: (context, ref, child) {
          return ref.watch(specializationProvider).when(data: (data) {
            List<Specialization> sp=disposeString==null?  data:data.where((element) => !disposeString!.contains(element.name)).toList();
          return  Column(
            children: [
              Wrap(
                        children: sp.map((e) {
                          final isSelected =
                              formGroup.control(controlName).value == e;
                          return GestureDetector(
                            onTap: () {
                                  formGroup.control(controlName).value =
                                      e; //FilterFormKeys.subIntersts
                                    
                                  
                                },
                            child: Container(
                              padding: EdgeInsets.all(10.sp),
                              margin: EdgeInsets.all(5.sp),
                              decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    gradient: isSelected
                                        ? LinearGradient(
                                            colors: [
                                              Theme.of(context).colorScheme.secondary,
                                              Theme.of(context).colorScheme.primary
                                            ], // Define your gradient colors
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          )
                                        : null,
                                    border: Border.all(
                                        color:
                                            Theme.of(context).colorScheme.secondary,
                                        style: BorderStyle.solid)),
                              child: Text(
                                    e.name,
                                    style: TextStyle(
                                        color: isSelected ? Colors.white : null),
                                  ),
                            ),
                          );
                        }).toList()),
            SizedBox(height: 20.h,),

            ReactiveFormConsumer(
              builder:(context, value, child)  {
                final spec=formGroup.control(controlName).value as Specialization?;
                List<String> supSelected=[];
                if(spec!=null){

                  supSelected=spec.subSpecialization;
                   

                }
                return AnimatedSize( 
                  curve: Curves.easeIn,alignment: Alignment.centerRight,
                   duration:const Duration(milliseconds: 200), 
                
                
                 child:supSelected.isNotEmpty?  Builder(


                   builder: (context) {
                    Future.delayed(const Duration(milliseconds: 300),() {
                                        onPress?.call();

                    },);

                   
                     return Column(
                      children: [
                         Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                      Text(
                        "Sup Specialization",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Colors.black),
                      ),
                ],

              )),
                        Wrap(
                                children: supSelected.map((e) {
                                  final isSelected =
                                      formGroup.control(supControll).value == e;
                                  
                                  return GestureDetector(
                                    onTap: () {
                                          formGroup.control(supControll).value =
                                              e; //FilterFormKeys.subIntersts
                                        
                                        },
                                    child: Container(
                                      padding: EdgeInsets.all(10.sp),
                                      margin: EdgeInsets.all(5.sp),
                                      decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20.r),
                                            gradient: isSelected
                                                ? LinearGradient(
                                                    colors: [
                                                      Theme.of(context).colorScheme.secondary,
                                                      Theme.of(context).colorScheme.primary
                                                    ], // Define your gradient colors
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                  )
                                                : null,
                                            border: Border.all(
                                                color:
                                                    Theme.of(context).colorScheme.secondary,
                                                style: BorderStyle.solid)),
                                      child: Text(
                                            e,
                                            style: TextStyle(
                                                color: isSelected ? Colors.white : null),
                                          ),
                                    ),
                                  );
                                }).toList()),
                      ],
                );
                   }
                 )

                
               : const SizedBox());
              }
            )
            ],
          );
          }, error:(error, stackTrace) => Text("Error: ${error.toString()}") , loading: () {
            return 
            
          Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: Wrap(
                      children: [
                       for(var i=0;i<10;i++)
                         GestureDetector(
                          onTap: () {
                                
                              },
                          child: Container(
                            padding: EdgeInsets.all(10.sp),
                       
                            
                             
                            margin: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
            
                                  borderRadius: BorderRadius.circular(20.r),
                                 color: Colors.black,
                                      
                                  border: Border.all(
                                      color:
                                          Theme.of(context).colorScheme.secondary,
                                      style: BorderStyle.solid)),
                          child: Text(" "*(Random().nextInt(20)+10)),
                          ),
                        )]
                      ),
            );
          },);
        },)
        
      ],
    );
  }
}