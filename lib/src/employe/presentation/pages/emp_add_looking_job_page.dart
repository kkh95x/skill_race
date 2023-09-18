import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/drop_down_search_widget.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/employe/application/looking_a_job_form.dart';
import 'package:skill_race/src/employe/domain/looking_job_info.dart';
import 'package:skill_race/src/home/application/get_countreas.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';

class EmpAddLookingForJobPage extends ConsumerWidget {
  const EmpAddLookingForJobPage({super.key,required this.lookingForAJob});
  static String get routeName=>"looking-a-job";
  static String get routePath=>"/$routeName";
  final LookingForAJob? lookingForAJob; 
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final  form=ref.read(lookingForAJobFormProvider(lookingForAJob: lookingForAJob));

   final user=ref.read(userAuthNotifer).currentUser;
    return WillPopScope(
      onWillPop: ()async {
     form.reset();
        return true;
        
      },
      child: Scaffold(
        appBar: appBarComponent(title: "Edit Looking For A job Data", context: context,showBack: true,onBack: () {
            form.reset();
        },),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ReactiveForm(
              formGroup: form,
              child: Column(
                children: [
//                 

                 ReactiveFormConsumer(builder: (context, formGroup, child) {
                  return DropdownSearchWidget(
                      title: "Country",
                      placeholder: "",
                      formControlName: "country",
                      onTap: () {
                        form.control("city").reset();
                      },
                      item: AllCountres.countries.keys.toList());
                }),
                SizedBox(
                  height: 20.h,
                ),
                ReactiveFormConsumer(builder: (context, formGroup, child) {
                  final city = form.control("country").value ?? "";
                  return DropdownSearchWidget(
                      title: "City",
                      placeholder: "",
                      formControlName: "city",
                      item: AllCountres.countries[city] ?? []);
                }),
                SizedBox(height: 20.h,),

ReactiveFormConsumer(builder: (context, _, child) {
                    final price = form.control("price").value as double? ??10.0;
                  
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
                    final price = formGroup.control("price").value??0.0 ;
                    return Slider(
                      value: price,
                      label: price.toString(),
                      
                      
                      onChanged: (value) {
                        formGroup.control("price").value=value.roundToDouble();
                      },
                      max: 5000,
                      min: 0,
                      divisions: 5000,
                      
                    );
                  }),
                  SizedBox(
                    height: 30.h,
                  ),

                  Row(
                    children: [
                      ReactiveCheckbox(
                        formControlName: "showNeedJob",
                        
                      ),
                      Text("Show me looking for A Job.",style: Theme.of(context).textTheme.bodyLarge,)
                    ],
                  ),

                  ReactiveFormConsumer(
                    builder: (context, formGroup, child)  {
                      return DynamicButton           
                      (
                        isDisabled: !form.valid ,
                        title:"Update",
                        onPressed: ()async {
                          if(user!=null){
                          
                           final country=form.control("country").value;
                            final city=form.control("city").value;
                            final price=form.control("price").value??0.0;
                            final showNeedJob=form.control("showNeedJob").value;
    
                          if(lookingForAJob==null){
                            final lookingForAJob=LookingForAJob(city: city, price:price,
                            country: country,showLookingJobProfile: showNeedJob);
                            await ref.read(userAuthNotifer.notifier).updateUser(user.copyWith(employee: user.employee?.copyWith(  lookingForAJob:lookingForAJob)));
                          

                           
    
                          }else{
                          final old=user.employee?.lookingForAJob;
                          
                         final newLookingJob=   old?.copyWith(city: city, price:price,
                            country: country,showLookingJobProfile: showNeedJob);
                            await ref.read(userAuthNotifer.notifier).updateUser(  user.copyWith( employee: user.employee?.copyWith(   lookingForAJob: newLookingJob)));
                         

                          }}
                            if(context.mounted){
                            context.pop();
    
                            }
                            BotToast.showText(text: "Updated");
                       
                      },);
                    }
                  )
            
            
            
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}