


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/project/domain/project.dart';

final getMyVideoPagination=StateNotifierProvider<PaginationNotifier<PostProject>,PaginationState<PostProject>>((ref) {
  return PaginationNotifier(getSnapshoots: (limit) {
    final userAuth=ref.watch(userAuthNotifer);
    return ref.read(postProjectRepositoryProvider).getMyVideo(userAuth.currentUser?.id??"", limit);
  }, recordPerBatch: 6)..init();
});