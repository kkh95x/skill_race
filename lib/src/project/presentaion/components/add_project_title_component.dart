
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/project/application/new_project_form.dart';

class AddPrjectTitleComponent extends StatelessWidget {
  const AddPrjectTitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50.h,),
          DynamicInput(
                    
                    control: NewProjectKeys.title,
                    title: "Project Title",
                    placeholder: ""),
           SizedBox(height: 24.h,),
            
                      DynamicInput(placeholder: "",control:NewProjectKeys.description,
                      multiLine: true,
                      title: "Description",),
            
                      SizedBox(height: 24.h,),
                      
                         SizedBox(height: 24.h,),
        ],
      ),
    );
  }
}