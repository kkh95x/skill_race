




import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/archive/application/is_archived_profider.dart';
import 'package:skill_race/src/archive/application/pagination_archevied_provider.dart';
import 'package:skill_race/src/archive/domain/archives.dart';
import 'package:skill_race/src/project/presentaion/components/project_card_components.dart';

class SavedProjectsComponent extends ConsumerWidget {
  const SavedProjectsComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final controller=ScrollController();
    controller.addListener(() {
      if(controller.position.pixels==controller.position.maxScrollExtent) {
        ref.read(paginationArchivedProjectProvider(ArchivesType.post).notifier).fetchNextBatch();
      }
     });
    return SingleChildScrollView(
physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            ref.watch(paginationArchivedProjectProvider(ArchivesType.post)).when(data: (recipes) {
          
              if(recipes.isEmpty){
                return const Center(child: Text("No Data Found"),);
              }
          
          
              return ListView.builder(
                itemCount: recipes.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                    return Card(
                      surfaceTintColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    elevation: 0,
                     child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 13.h),
                       child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title:ProjectCardComponents(projectId: recipes[index].refrenceId),
                        trailing: GestureDetector(
                          onTap: () async{
                            await showDialog(context: context, builder:(context) {
                              return  AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                  const Text("Are you sure you want to delete the item?"),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      DynamicButton(
                                        isExpandedWidth: false,
                                        title: "Yes",
                                        onPressed: () async{
                                         await ref.read(deleteArchivedProvider(recipes[index]).future);
                                          BotToast.showText(text: "Deleted");
                                          if(context.mounted){
                                          context.pop();}
                                        
                                      },),
                                      DynamicButton(
                                        isExpandedWidth: false,
                                        type: ButtonTypes.secondary,
                                        title: "No",
                                        onPressed: () {
                                                                              context.pop();
                                        
                                        
                                      },)
                                    ],
                                  )
                                ],),
                              );
                            },);
                          },
                          child: Assets.icons.png.deleteBorder.image()),
                       ),
                     ),
                   );
                },);
              
            }, loading: () => const Center(child: CircularProgressIndicator(),) , error: (e, stk) =>  Center(child: Text(e.toString()),) , onGoingLoading: (recipes) {
               if(recipes.isEmpty){
                return const Center(child: Text("No Data Found"),);
              }
          
          
              return ListView.builder(
                itemCount: recipes.length+1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if(index==recipes.length){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                   return Card(
                      surfaceTintColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    elevation: 0,
                     child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 13.h),
                       child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title:ProjectCardComponents(projectId: recipes[index].refrenceId),
                        trailing: GestureDetector(
                          onTap: () async{
                            await showDialog(context: context, builder:(context) {
                              return  AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                  const Text("Are you sure you want to delete the item?"),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      DynamicButton(
                                        isExpandedWidth: false,
                                        title: "Yes",
                                        onPressed: () async{
                                         await ref.read(deleteArchivedProvider(recipes[index]).future);
                                          BotToast.showText(text: "Deleted");
                                          if(context.mounted){
                                          context.pop();}
                                        
                                      },),
                                      DynamicButton(
                                        isExpandedWidth: false,
                                        type: ButtonTypes.secondary,
                                        title: "No",
                                        onPressed: () {
                                                                              context.pop();
                                        
                                        
                                      },)
                                    ],
                                  )
                                ],),
                              );
                            },);
                          },
                          child: Assets.icons.png.deleteBorder.image()),
                       ),
                     ),
                   );
                },);
            }, onGoingError: (recipes, e, stk) {
               if(recipes.isEmpty){
                return const Center(child: Text("No Data Found"),);
              }
          
          
              return ListView.builder(
                itemCount: recipes.length+1,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if(index==recipes.length){
                    return  Center(child: Text(e.toString()),);
                  }
                  return Card(
                      surfaceTintColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    elevation: 0,
                     child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 13.h),
                       child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title:ProjectCardComponents(projectId: recipes[index].refrenceId,),
                        trailing: GestureDetector(
                          onTap: () async{
                            await showDialog(context: context, builder:(context) {
                              return  AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                  const Text("Are you sure you want to delete the item?"),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      DynamicButton(
                                        isExpandedWidth: false,
                                        title: "Yes",
                                        onPressed: () async{
                                         await ref.read(deleteArchivedProvider(recipes[index]).future);
                                          BotToast.showText(text: "Deleted");
                                          if(context.mounted){
                                          context.pop();}
                                        
                                      },),
                                      DynamicButton(
                                        isExpandedWidth: false,
                                        type: ButtonTypes.secondary,
                                        title: "No",
                                        onPressed: () {
                                                                              context.pop();
                                        
                                        
                                      },)
                                    ],
                                  )
                                ],),
                              );
                            },);
                          },
                          child: Assets.icons.png.deleteBorder.image()),
                       ),
                     ),
                   );
                },);
            },),
          ],
        ),
      ),
    );
  }}