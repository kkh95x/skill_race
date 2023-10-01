
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/src/archive/presentaion/components/saved_profiles_components.dart';
import 'package:skill_race/src/archive/presentaion/components/saved_project_components.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/user/presintation/components/need_sgin_up_component.dart';
final _indexTabe=StateProvider<int>((ref) => 0);
class SavedPage extends ConsumerWidget {
  const SavedPage({super.key});
 static String get routeName=>"user-archive";
 static String get routePath=>"/$routeName";
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final pc=PageController();

   

   
    return Scaffold(
      body: Column(
        children: [
          appBarComponent(title: "Saved", context: context),
          Consumer(
            builder: (context, ref, child)  {
              final index=ref.watch(_indexTabe);
              return Container(
    height: 32.h,
    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
    margin: EdgeInsets.symmetric(horizontal: 28.w,vertical: 20.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color:const Color(0x1e767680)
    
    ),
    child: Row(
      children: [
      Expanded(
        child: GestureDetector(
           onTap: () {
            ref.read(_indexTabe.notifier).state=0;
             pc.jumpToPage(0);
          },
          child: AnimatedContainer(duration: const Duration(milliseconds: 200),
          // padding: EdgeInsets.all(value),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            gradient:index==0? LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary]):null
          ),
              alignment: Alignment.center,
        
          child:Text("Projects",style: TextStyle(color: index==0?Colors.white:null),) ,
          ),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            ref.read(_indexTabe.notifier).state=1;
            pc.jumpToPage(1);
          },
          child: AnimatedContainer(duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            gradient:index==1? LinearGradient(colors: [Theme.of(context).colorScheme.secondary,Theme.of(context).colorScheme.primary]):null
          
            ),
            
          child:Text("Profiles",style: TextStyle(color: index==1?Colors.white:null),) ,
          ),
        ),
      )
      ],
    ),
    
              );
            }
          ),
          Expanded(
            child: PageView.builder(
              onPageChanged: (value) {
                          ref.read(_indexTabe.notifier).state=value;
    
              },
              controller: pc,
              itemCount:  2,
              itemBuilder: (context, index) {
                return [const SavedProjectsComponent(),const SavedProfilesComponents()][index];
              
            },),
          )
        ],
      ),
    );
  }
}