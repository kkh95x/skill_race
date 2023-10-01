




import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_race/src/archive/data/firestore_archives_repository.dart';
import 'package:skill_race/src/archive/domain/archives.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';


part 'is_archived_profider.freezed.dart';
@freezed
abstract class IsArchavedProviderInput with _$IsArchavedProviderInput{
factory IsArchavedProviderInput({
required String refrenceId,
required ArchivesType type,


})=_IsArchavedProviderInput;
}


final isArchivedProvider=StreamProvider.family<Archives?,IsArchavedProviderInput>((ref,input) {
  final user=ref.read(userAuthNotifer).currentUser;
  return ref.read(archivesRepositoryProvider).isCreated(user?.id??"", input.refrenceId, input.type);

});

final createArchivedProvider=FutureProvider.autoDispose.family<void,IsArchavedProviderInput>((ref,input)async {
  await ref.read(archivesRepositoryProvider).create(Archives(refrenceId: input.refrenceId, userOwner: ref.read(userAuthNotifer).currentUser?.id??"", createdAt: DateTime.now(), type: input.type));
  return;
});


final deleteArchivedProvider=FutureProvider.autoDispose.family<void,Archives>((ref,input)async {
  await ref.read(archivesRepositoryProvider).delete(input);
  return;
});