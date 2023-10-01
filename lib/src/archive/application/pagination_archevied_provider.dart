


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/archive/data/firestore_archives_repository.dart';
import 'package:skill_race/src/archive/domain/archives.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';

final paginationArchivedProjectProvider=StateNotifierProvider.family<PaginationNotifier<Archives>,PaginationState<Archives>,ArchivesType>((ref,type) {

final user=ref.watch(userAuthNotifer).currentUser;

return PaginationNotifier(getSnapshoots: (limit) {
  return ref.read(archivesRepositoryProvider).streamMyArchives(user?.id??"", type, limit);
}, recordPerBatch: 5)..init();
});