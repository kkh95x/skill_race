import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skill_race/core/application/speicaization_provider.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/edit_emp_profile_provider.dart';
import 'package:skill_race/src/hiring/application/edit_profile_hiring_form.dart';
import 'package:skill_race/src/hiring/application/edit_profile_hiring_provider.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';
import 'package:skill_race/src/user/application/is_user_can_edit_profile_provider.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:skill_race/src/user/presintation/components/profile_pic_edit_component.dart';

class EditHiringMyProfileComponent extends ConsumerWidget {
  const EditHiringMyProfileComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user=ref.watch(userAuthNotifer).currentUser;
    final form = ref.read(editHiringFormProfileProvider(user: user!));
    final isCanEditNameProfile = ref.read(isUserCanEditName(user));
    return ReactiveForm(
      formGroup: form,
      child: Column(
        children: [
          SizedBox(
                    height: 41.h,
                  ),
                   ProfilePicWidget(
                    imagUrl:form.control(EditUserProfileKeys.imageUrl).value ,
                    onChange: (image) {
                      form.control(EditUserProfileKeys.imagePath).value =image.path;
                    },
                  ),
                  SizedBox(
                    height: 46.h,
                  ),
    
                  DynamicInput(
                      title: "Name",
                      readOnly: !isCanEditNameProfile,
                      control: EditUserProfileKeys.fullname,
                      description: isCanEditNameProfile
                          ? "You can change your name once every 60 days"
                          : "You can change your name in ${  user.lastEdtiName?.add(const Duration(days: 60)).toString().split(" ").first}",
                      placeholder: ""),
                  //  DynamicInput(
                  //   title: "Email",
                  //   readOnly: true,
                  //   description: "You cannot change the email",
                  //   control:EditUserProfileKeys.email ,
                  //   placeholder: ""),
    
                   DynamicInput(
                    title: "Phone Number",
                    control:EditUserProfileKeys.phoneNumber ,
                    type: Type.phoneNumber,
                    placeholder: ""),
                                   SizedBox(height: 10.h,),
    
                  DynamicInput(
                      title: "Birth Day",
                      readOnly: !isCanEditNameProfile,
                      type: Type.date,
                      placeholderIcon: Assets.icons.png.calendar.image(),
                      placeholderIconPosition: IconPosition.end,
                      control: EditUserProfileKeys.birthDay,
                      placeholder: ""),
                   SizedBox(height: 10.h,),
                   Padding(
                  padding: EdgeInsets.only(bottom: 4.h),
                  child: Row(
                    children: [
                      Text(
                         'state',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black),
                      ),
                    ],
                  )),
    
    
                   ReactiveDropdownField(
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color:Colors.black),
    
                        decoration:InputDecoration(
    
                            hintStyle: Theme.of(context).textTheme.bodyLarge,
                            contentPadding:
                                 EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 16),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            
                           labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onPrimary, ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(20.r))),
                          filled: true,
                          ) ,
                        formControlName:EditUserProfileKeys.state ,
                        items: UserState.values.map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toScreen()))).toList()),
    
    
                  SizedBox(height: 10.h,),
                
                      // SizedBox(height: 10.h,),
                     
                      
    
    
    
    
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                      return DropdownSearchWidget(
                          title: "Country",
                          placeholder: "",
                          formControlName: EditUserProfileKeys.countryName,
                          onTap: () {
                            form.control(EditUserProfileKeys.cityName).reset();
                          },
                          item: AllCountres.countries.keys.toList());
                    }),
                    SizedBox(
                      height: 10.h,
                    ),
                    ReactiveFormConsumer(builder: (context, formGroup, child) {
                      final city = form.control(EditUserProfileKeys.countryName).value ?? "";
                      return DropdownSearchWidget(
                          title: "City",
                          placeholder: "",
                          formControlName: EditUserProfileKeys.cityName,
                          item: AllCountres.countries[city] ?? []);
                    }),
    
                    SizedBox(height: 50.h,),
                    DynamicButton(
                      title: "Save",
                      onPressed: ()async {
                    await ref.read(editHiringProfileProvider(EditHiringProfileProvider(context: context, formGroup: form)).future);
                      
                    },),
                    SizedBox(height: 50.h,),
        ],
      ),
    );
  }
}