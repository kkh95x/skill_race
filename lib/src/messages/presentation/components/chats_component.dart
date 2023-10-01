

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skill_race/core/presentation/widget/dynamic-Input.dart';
import 'package:skill_race/src/home/presentation/components/appbar_component.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';
import 'package:skill_race/src/messages/application/chats_pagination_provider.dart';
import 'package:skill_race/src/messages/application/get_messages_notifer_provider.dart';
import 'package:skill_race/src/messages/data/firestore_chat_reposiory.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
import 'package:skill_race/src/messages/presentation/components/chat_components.dart';
import 'package:skill_race/src/messages/presentation/pages/messages_page.dart';

class ChatsComponent extends ConsumerWidget {
  const ChatsComponent({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final controller=ScrollController();
    controller.addListener(() {
ref.read(chatPaginationProvider.notifier).fetchNextBatch();
     });
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child:     Column(
          children: [
            appBarComponent(title: "Chats", context: context,showBack: true,showMessage: false),
             Container(
              margin: EdgeInsets.all(10.sp),
              padding: EdgeInsets.only(left:10.sp),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.all(Radius.circular(20.r),
                   
              )),
               child: TextField(
                onChanged: (value) {
                  ref.read(textSearchProvier.notifier).state=value;
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  // filled: true,
                  icon: const Icon(Icons.search),
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                     gapPadding: 0,
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(20.r),))
                  
                ),
               ),
             ),
        
            ref.watch(chatPaginationProvider).when(data: (recipes) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recipes.length,
                
                itemBuilder: (context, index) {
                  return ChatComponent(chat: recipes[index],
                  onTap: () {
                    if(!ref.read(isSeenChatProvider(recipes[index]))){
                      ref.read(chatRepositoryProvider).updated(recipes[index].copyWith(chatState: ChatState.seen));
                    }
                    context.push(MessagesPage.routePath,extra: recipes[index]);
                  },
                  );
                // return
              },);
            }, loading: () {
              //TODO BUILD LOADING
              return const Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircularProgressIndicator(),
                ],
              ),);
              
            }, error: (e, stk) {
              print(e);
              return const Center(child: Text("Error"),);
            }, onGoingLoading: (recipes) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recipes.length+1,
                
                itemBuilder: (context, index) {
                  if(index==recipes.length){
                    return const Center(child: CircularProgressIndicator(),);
                  }
                  return ChatComponent(chat: recipes[index]);
                // return
              },);
              
            }, onGoingError: (recipes, e, stk) {
               return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recipes.length+1,
                
                itemBuilder: (context, index) {
                  if(index==recipes.length){
                    return const Center(child: Text("Error"),);
                  }
                  return ChatComponent(chat: recipes[index]);
                // return
              },);
            },)
          ],
        ),
      ),
    );
  }
}