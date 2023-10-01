


import 'package:skill_race/src/archive/domain/archives.dart';

abstract class ArchivesRepository{
  Future<void>create(Archives archive);
  Future<void> delete(Archives archives);
  Stream<Archives?> isCreated(String userId,String refId,ArchivesType type);
  Stream<List<Archives>> streamMyArchives(String myId,ArchivesType type,int limit);

}