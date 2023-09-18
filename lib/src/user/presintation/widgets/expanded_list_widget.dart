import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
final isExpandedProvider=StateProvider.family<bool,BuildContext>((ref,context) => false);
class ExpandedListWidget extends ConsumerWidget {
  const ExpandedListWidget({super.key,required this.body,required this.title,this.isExpandedBody=false,});
final Widget title;
final Widget body;
final  bool isExpandedBody;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final isExpande=ref.watch(isExpandedProvider(context));
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: ExpansionPanelList(
                  expandedHeaderPadding: EdgeInsets.symmetric(vertical: 6.h),
                  
                      
                  // materialGapSize: ,
                  elevation: 0,
                expansionCallback: (panelIndex, isExpanded) {
                 ref.read(isExpandedProvider(context).notifier).state=isExpanded;
                  
                },
                  children: [
                
                    ExpansionPanel(
                      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                      canTapOnHeader: true,
                      isExpanded: isExpande,

                      headerBuilder: (context, isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(12.sp,),
                        child:title
                      )
                      ;
                    }, body: Container(
                      width: MediaQuery.of(context).size.width,
                      margin:isExpandedBody?null: EdgeInsets.symmetric(horizontal: 10.h),
                      padding:isExpandedBody?null: EdgeInsets.all(10.sp),
                      decoration: const BoxDecoration(
                        border: Border( top: BorderSide(color:Color(0xffACACAC) ))
                      ),
                      child: body
                    )),
                    
                  
                  ],
                ),
              ),
        
    );
  }
}