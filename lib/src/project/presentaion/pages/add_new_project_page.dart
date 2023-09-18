

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/project/application/new_project_form.dart';
import 'package:skill_race/src/project/presentaion/components/add_project_bottom_component.dart';
import 'package:skill_race/src/project/presentaion/components/add_project_media_component.dart';
import 'package:skill_race/src/project/presentaion/components/add_project_price_sp_component.dart';
import 'package:skill_race/src/project/presentaion/components/add_project_title_component.dart';
final pageIndexAddNewPost=StateProvider<int>((ref) => 0);
class AddNewProjectPage extends ConsumerWidget {
  const AddNewProjectPage({super.key});
  static String get routeName=>"add-new-project";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final formNewProject=ref.read(newProjectFromProvider);
    final controller=PageController();
    final pages=[
      const AddProjectMediaComponent(),
      const AddPrjectTitleComponent(),
        const AddProjectPriceSpComponent()
    ];
    return Scaffold(
      appBar:appBarComponent(title: "Add New Project", context: context,showBack: true,
      onBack: () {
         ref.read(newProjectFromProvider).reset();
          ref.read(pageIndexAddNewPost.notifier).state=0;
      },
      ) ,
      body: WillPopScope(
        onWillPop: () async{
          ref.read(newProjectFromProvider).reset();
          ref.read(pageIndexAddNewPost.notifier).state=0;

          return true;
        },
        child: ReactiveForm(
          formGroup: formNewProject,
          child:Container(
            padding: EdgeInsets.all(10.sp),
            alignment: Alignment.center,
      
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (value) {
                      ref.read(pageIndexAddNewPost.notifier).state=value;
                      print("---->$value ${pages.length}");
                      
                    },
                    controller: controller,
                     
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pages.length,
                    itemBuilder: (context, index) {
                      return pages[index];
                    
                  },),
                ),
                SizedBox(
                  height: 100.h,
                  child: AddProjectBottomComponent(pc: controller,isFirstPage:ref.watch(pageIndexAddNewPost)==0,isLastPage: ref.watch(pageIndexAddNewPost)==(pages.length-1),))
      
              ],
            ),
          )
        ),
      ),
    );
  }
}