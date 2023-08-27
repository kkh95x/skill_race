import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/presentation/components/auth_page_template_component.dart';
import 'package:skill_race/src/user/application/user_form.dart';

class EnterNewPasswordComponent extends ConsumerWidget {
  const EnterNewPasswordComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.read(userFormProvider());

    return AuthPageTemplateComponent(
      addLogo: false,
      title: "Confirm Code",
      child: ReactiveForm(


        formGroup: form.control("enterPassword") as FormGroup,
        child: ReactiveFormConsumer(
          builder: (context, formGroup, child){
            return Column(
              children: [
                SizedBox(height: 45.h,),

                const Text(
                  "Set your new password and login again so you can access your information.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 48.h,
                ),
                DynamicInput(
                  placeholderIcon:InkWell(
                    onTap: () {
                      formGroup.control("see").value=!formGroup.control("see").value;
                    },
                    child:formGroup.control("see").value?const Icon(Icons.visibility):const Icon(Icons.visibility_off)) ,
                  
               
                  fieldType:"كلمة مرور" ,
                    title: "New Password", control: "password", placeholder: "New Password",
                     obscure:formGroup.control("see").value),
                 DynamicInput(
                  placeholderIcon:InkWell(
                    onTap: () {
                      formGroup.control("see").value=!formGroup.control("see").value;
                    },
                    child:formGroup.control("see").value?const Icon(Icons.visibility):const Icon(Icons.visibility_off)) ,
                  
               
                  fieldType:"كلمة مرور" ,
                    title: "Confirm Password", control: "rePassword", placeholder: "Confirm Password",
                     obscure:formGroup.control("see").value),
                SizedBox(
                  height: 10.h,
                ),
                
                SizedBox(
                  height: 36.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return DynamicButton(
                    title: "Sgin Up",
                    isDisabled: !formGroup.valid,
                    onPressed: () {},
                  );
                }),

                SizedBox(
                  height: 20.h,
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
