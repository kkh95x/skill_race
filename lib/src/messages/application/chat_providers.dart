

import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/domain/chat.dart';

final chatDateFormat=Provider.autoDispose.family<String, DateTime>((ref,dateTime) {
  final now=DateTime.now();
  if(now.year==dateTime.year&&now.month==dateTime.month&&now.day==dateTime.day){
    return DateFormat.jm().format(dateTime);
  }else if(now.year==dateTime.year&&now.month==dateTime.month&&now.day==dateTime.day+1){
    return "Yesterday";
  }else if(now.year==dateTime.year&&now.month==dateTime.month&&(now.day-dateTime.day<=7)){
    return DateFormat('EEEE').format(dateTime);
  }else{
    return"${dateTime.year}/${dateTime.month}/${dateTime.day}";
  }


});
final isSeenChatProvider=Provider.autoDispose.family<bool,Chat>((ref, chat) {
  final user=ref.read(userAuthNotifer).currentUser;
  final lastMessage=chat.lastMessage;
  if(lastMessage==null){
    return true;
  }
  final isSenderLastMessage=lastMessage.userId==user?.id;  
if(isSenderLastMessage){
  return true;
}else{
  return chat.chatState==ChatState.seen;
}

},);
