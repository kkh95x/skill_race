


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/project/domain/project.dart';

final getMyVideoPagination=StateNotifierProvider.family<PaginationNotifier<PostProject>,PaginationState<PostProject>,String>((ref,id) {
  return PaginationNotifier(getSnapshoots: (limit) {
    return ref.read(postProjectRepositoryProvider).getMyVideo(id, limit);
  }, recordPerBatch: 6)..init();
});