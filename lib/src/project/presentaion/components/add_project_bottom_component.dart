


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/presentation/widget/dynamic_button.dart';
import 'package:skill_race/src/project/application/save_new_post_provider.dart';
class AddProjectBottomComponent extends ConsumerWidget {
  const AddProjectBottomComponent({super.key,required this.pc,required this.isFirstPage,required this.isLastPage});
  final PageController pc;
  final bool isFirstPage;
  final bool isLastPage;

  @override
  Widget build(BuildContext context,WidgetRef ref) {

         return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [ TextButton(onPressed:isFirstPage?null: (){
           pc.previousPage(duration:const Duration(milliseconds: 200), curve: Curves.linear);


          }, child:const Text("Back",style: TextStyle(color: Colors.black),)),
            AnimatedCrossFade(firstChild:TextButton(onPressed: () {
            pc.nextPage(duration:const Duration(milliseconds: 200), curve: Curves.linear);
          }, child:const Text("Next")) , secondChild: DynamicButton(
            isExpandedWidth: false,
            
            title: "Save Project",
            onPressed: () async{
              await ref.read(saveNewPostProvider(context).future);
            
          },), crossFadeState: isLastPage?CrossFadeState.showSecond:CrossFadeState.showFirst, duration: const Duration(milliseconds: 200)) 
        
          ]
        );
        
        
      
    
  }
}