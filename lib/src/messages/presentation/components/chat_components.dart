import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/application/chat_providers.dart';
import 'package:skill_race/src/messages/domain/chat.dart';
import 'package:skill_race/src/messages/domain/message.dart';
import 'package:skill_race/src/messages/presentation/widgets/chat_loading.dart';
import 'package:skill_race/src/messages/presentation/widgets/chats_widget.dart';
import 'package:skill_race/src/user/application/get_user_py_id_provider.dart';

class ChatComponent extends ConsumerWidget {
  const ChatComponent({super.key, required this.chat,this.onTap});
  final Chat chat;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userAuthNotifer).currentUser;
    final secoundUserId =
        chat.usersId.singleWhere((element) => element != user?.id);
    return ref.watch(getUserById(secoundUserId)).when(
          data: (data) {
            return GestureDetector(
              onTap:onTap ,
              child: ChatWidget(
                  chatSubTitle: getSupTitle(chat.lastMessage,user?.id),
                  chatTitle: data?.fullname ?? "user name",
                  date: chat.updatedAt,
                  isUnSeen: !ref.read(isSeenChatProvider(chat)),
                  urlProfile: data?.imgUrl),
            );
          },
          error: (error, stackTrace) => const Center(
            child: Text('Error'),
          ),
          loading: () {
            return const ChatLoadingWidget();
          },
        );
  }

  String getSupTitle(Message? message,String? userId) {
    if (message == null) {
      return " ";
    }
    switch (message.messageType) {
      case MessageType.video:
        return "Video";
      case MessageType.voice:
        return "voice";
      case MessageType.image:
        return "image";
      case MessageType.text:
      final owner=message.userId==userId?"you: ":"";

      if(message.content.length>15){
          return "$owner${"${message.content.substring(0,15)}..."}";
      }
        return "$owner${ message.content}";
    }
  }
}
