
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/data/firestore_chat_reposiory.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
import 'package:skill_race/src/messages/presentation/pages/messages_page.dart';
class OpenChatParamesProvider{
  String name;
  String userId;
  BuildContext context;
  OpenChatParamesProvider({required this.name,required this.userId,required this.context});
}
final openChatParamesProvider=FutureProvider.autoDispose.family<void,OpenChatParamesProvider>((ref,parames)async {
  final userId=parames.userId;
  final username=parames.name;
  final currentUser=ref.read(userAuthNotifer).currentUser;
  final chatRepo=ref.read(chatRepositoryProvider);
  BotToast.showLoading();
  final chat=await chatRepo.get([userId,currentUser?.id?? DateTime.now().toIso8601String()]);

  if(chat==null){
    final usersnameCatting=<String>[];
    for(int i=1;i<=username.length;i++){
      usersnameCatting.add(username.substring(0,i));
    }
   if(currentUser?.fullname!=null)
   { for(int i=1;i<=currentUser!.fullname.length;i++){
      usersnameCatting.add(currentUser.fullname.substring(0,i));
    }}
   final newChat=await chatRepo.create(Chat(chatState: ChatState.unSeen, createdAt: DateTime.now(),
   usersname:usersnameCatting,
    usersId: [
    userId,
    currentUser?.id??DateTime.now().toIso8601String(),
   ], lastMessage: null, updatedAt: DateTime.now()));

   
   // ignore: use_build_context_synchronously
   parames.context.push(MessagesPage.routePath,extra: newChat);
  }else{
   // ignore: use_build_context_synchronously
   parames.context.push(MessagesPage.routePath,extra: chat);

  }
  BotToast.closeAllLoading();

  
});