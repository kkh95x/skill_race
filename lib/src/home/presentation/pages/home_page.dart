import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/auth/application/auth_state.dart';
import 'package:skill_race/src/home/application/hom_page_pagnation.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/project/presentaion/pages/add_new_project_page.dart';
import 'package:skill_race/src/user/application/user_un_auth_helper.dart';
import 'package:skill_race/src/user/domain/app_user.dart';
import 'package:skill_race/src/project/presentaion/widgets/post_widget.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName=>"user-home";
  static String get routePath=>"/$routeName";

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final user=ref.watch(userAuthNotifer);
    final controller=ScrollController();
    controller.addListener(() {
      if(controller.position.pixels==controller.position.maxScrollExtent){
        ref.read(homePagePagination.notifier).fetchNextBatch();
      }
    });
   

    return  Scaffold(
      appBar: appBarComponent(title: "Home", context: context,showBack: false),
     body:SingleChildScrollView(
      physics:const  AlwaysScrollableScrollPhysics(),
      controller: controller,
      child:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
        child: Column(children:[
          Visibility(
            visible:! (user.currentUser?.accountType==AccountType.hiring),
            child: DynamicButton(
               onPressed: () {
                if(user.state==AuthStatus.auth){
                 context.push(AddNewProjectPage.routePath);
                 
                 }else{
                  ref.read(userUnAuthHelper(context));
                 }
               },
               title: "Add New Project",
            ),
          ),
          SizedBox(height: 16.h,),
           ref.watch(homePagePagination).when(data: (recipes) {
            if(recipes.isEmpty){
              return const Center(child: Text("No Posts now"),);
            }
            return ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recipes.length+1,
            itemBuilder: (context, index) {
              if(index==recipes.length){
                return Container(
                 margin: EdgeInsets.only(bottom: 100.h,top: 50.h),
                 alignment: Alignment.center,
                 child: const Text("- Thats All -"),
                );
              }
           return PostWidget(images:recipes[index].images ,
                      postId: recipes[index].id??"",

           postType: recipes[index].postProjectType,
           price: recipes[index].price,
           specialization: recipes[index].specialization,
           starts: recipes[index].stars.toDouble(),
           userId: recipes[index].userId,
           video: recipes[index].videoUrl,

            );
          });
             
           }, loading: () {
            return const Center(child:  CircularProgressIndicator(),);
             
           }, error: (e, stk) {
            return Center(child: Text("Error: ${e.toString()}"),);
             
           }, onGoingLoading: (recipes) {
            return ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recipes.length+1,
            itemBuilder: (context, index) {
              if(index==recipes.length){
                return const Center(child: CircularProgressIndicator(),);
              }
           return PostWidget(images:recipes[index].images ,
           postId: recipes[index].id??"",
           postType: recipes[index].postProjectType,
           price: recipes[index].price,
           specialization: recipes[index].specialization,
           starts: recipes[index].stars.toDouble(),
           userId: recipes[index].userId,
           video: recipes[index].videoUrl,

            );
        });
             
           }, onGoingError: (recipes, e, stk) {
             return ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: recipes.length+1,
            itemBuilder: (context, index) {
              if(index==recipes.length){
                return  Center(child: Text("Error: ${e.toString()}"),);
              }
           return PostWidget(images:recipes[index].images ,
                      postId: recipes[index].id??"",

           postType: recipes[index].postProjectType,
           price: recipes[index].price,
           specialization: recipes[index].specialization,
           starts: recipes[index].stars.toDouble(),
           userId: recipes[index].userId,
           video: recipes[index].videoUrl,

            );
          });
           },)
          

        
         ,
        
        ]),
      )
     )
    
    );
  }
}