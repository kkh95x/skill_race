


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/messages/data/firestore_chat_reposiory.dart';
import 'package:skill_race/src/messages/domain/chat.dart';

final chatPaginationProvider=StateNotifierProvider<PaginationNotifier<Chat>,PaginationState<Chat>>((ref) 
{
  final userId=ref.read(userAuthNotifer).currentUser?.id;
    final text=ref.watch(textSearchProvier);

return PaginationNotifier(getSnapshoots: (limit) {  
  return ref.read(chatRepositoryProvider).getMyChats(userId??"", limit,text);
}, recordPerBatch: 10)..init();
});
final textSearchProvier=StateProvider<String>((ref) => "");