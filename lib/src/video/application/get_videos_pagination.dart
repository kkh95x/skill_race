


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/project/domain/project.dart';

final getVideosPagination=StateNotifierProvider<PaginationNotifier<PostProject>,PaginationState<PostProject>>((ref) => 
 PaginationNotifier(getSnapshoots: (limit) {
  return ref.read(postProjectRepositoryProvider).getAllVideo(limit);
}, recordPerBatch: 2)..init()
);