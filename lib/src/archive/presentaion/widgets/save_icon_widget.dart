import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skill_race/gen/assets.gen.dart';
import 'package:skill_race/src/archive/application/is_archived_profider.dart';
import 'package:skill_race/src/archive/domain/archives.dart';

class SaveIconWidget extends ConsumerWidget {
  const SaveIconWidget({super.key,this.onTap,
  this.isWhite=false,
  this.showText=true,required this.archivesType,required this.refrenceId});
  final void Function()?onTap;
  final String refrenceId;
  final  ArchivesType archivesType;
  final bool showText;
  final bool isWhite;
  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ref.watch(isArchivedProvider(IsArchavedProviderInput(refrenceId: refrenceId, type: archivesType))).when(data: (data) {
      return GestureDetector(
      onTap: () async{
       
    if(data==null){
     await ref.read(createArchivedProvider(IsArchavedProviderInput(refrenceId: refrenceId, type: archivesType)).future);
      BotToast.showText(text: "Saved");
    }else{ 
      await ref.read(deleteArchivedProvider(  data).future);
      BotToast.showText(text: "Un Saved");

    }
        onTap?.call();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           isWhite?
            Assets.icons.png.saved.image(fit: BoxFit.fitWidth):
            Assets.icons.png.saveGarden.image(fit: BoxFit.fitWidth),
            if(showText)
            SizedBox(width: 4.w,),
            if(showText)
            

            !isWhite?  ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.secondary,
                              Theme.of(context).colorScheme.primary
                            ], // Define your gradient colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },child: Text( data==null?"Save":"Saved",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),))
                        : Text(
                               data==null?"Save":"Saved",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              )
          ],
        ),
    );
    }, error: (error, stackTrace) => Center(child: Text(error.toString()),), loading: () =>const Center(child: CircularProgressIndicator(),),);
    
   
  }
}