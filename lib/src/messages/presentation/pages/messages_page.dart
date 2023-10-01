import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/application/get_messages_notifer_provider.dart';
import 'package:skill_race/src/messages/application/messages_providers.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
import 'package:skill_race/src/messages/domain/message.dart';
import 'package:skill_race/src/messages/presentation/components/message_buttons_component.dart';
import 'package:skill_race/src/messages/presentation/components/message_component.dart';


class MessagesPage extends ConsumerWidget {
  const MessagesPage({super.key, this.chat});
  static String get routeName => "message-page";
  static String get routePath => "/$routeName";
  final Chat? chat;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userAuthNotifer).currentUser;
    final textEditingController =TextEditingController();
   final controll=ScrollController();
   controll.addListener(() { 
    if(controll.position.pixels==controll.position.maxScrollExtent){
    ref.read(getMessagesNotiferProvider(chat!.id!).notifier).fetchNextBatch();}
   });
    return Scaffold(
        appBar: getMessagesAppBar(context, ref, user, chat),
          body: chat?.id == null
            ? const Center(
                child: Text("Error"),
              )
            :SafeArea(
              bottom: true,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      reverse: true,
                      controller: controll,
                      child: Column(
                        children: [
                          ref.watch(getMessagesNotiferProvider(chat!.id!)).when(data:(recipes) {
                            if(recipes.isEmpty){
                              return const Center(child: Text("No Messages"),);
                            }
                            return ListView.builder(
                              physics:const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: recipes.length,
                              itemBuilder: (context, index) {
                              return MessageComponent(message: recipes[index],);
                            },);
                          }, waitingSendNewMessage: (recipes, newMessage) {
                            return ListView.builder(
                                                    shrinkWrap: true,
                  
                              physics:const NeverScrollableScrollPhysics(),
                              itemCount: recipes.length+1,
                              itemBuilder: (context, index) {
                                if(index==recipes.length){
                                   return MessageComponent(message: recipes[index],isLocaly: true,);
                                }
                              return MessageComponent(message: recipes[index]);
            
                            },);
                            
                          }, onSendError: (recipes, newMessage) {
                            return ListView.builder(
                                                    shrinkWrap: true,
                  
                              physics:const NeverScrollableScrollPhysics(),
                              itemCount: recipes.length+1,
                              itemBuilder: (context, index) {
                                if(index==recipes.length){
                                   return ListTile(
                                title: Text(newMessage.content),
                              );
                                } return MessageComponent(message: recipes[index],isLocaly: true,);
            
                            },);
                            
                          }, loading: () {
                            return const Center(child: CircularProgressIndicator(),);
                            
                          }, error: (e, stk) {
                            return const Center(child: Text("error"),);
                            
                          }, onGoingLoading: (recipes) {
                           return ListView.builder(
                                                  shrinkWrap: true,
                  
                              physics:const NeverScrollableScrollPhysics(),
                              itemCount: recipes.length+1,
                              itemBuilder: (context, index) {
                                if(index==0){
                                   return const Center(child: CircularProgressIndicator(),);
                                }
                                                            return MessageComponent(message: recipes[index-1]);
            
                              
                            },);
                  
                            
                          }, onGoingError: (recipes, e, stk) {
                            return ListView.builder(
                                                    shrinkWrap: true,
                  
                              physics:const NeverScrollableScrollPhysics(),
                              itemCount: recipes.length+1,
                              itemBuilder: (context, index) {
                                if(index==recipes.length){
                                   return const Center(child: Text("Error"),);
                                }
                                                                                       return MessageComponent(message: recipes[index],);
            
                            },);
                  
                          },)
                        ],
                      ),
                    ),
                  ),
                  MessageButtonsComponent(
                    textController: textEditingController,
                      onContentSend: (path, type) {  
            
              if(chat?.id!=null){
                 ref.read(getMessagesNotiferProvider(chat!.id!).notifier).sendNewMessage(Message(messageType: type,
                 createdAt: DateTime.now(), userId: user?.id??" ", content: path, chatId: chat!.id!));
                 controll.animateTo(controll.position.minScrollExtent, duration:const Duration(milliseconds: 100), curve: Curves.linear);
              
              }
                      },
                    ),
                ],
              ),
            ));
  }
}
