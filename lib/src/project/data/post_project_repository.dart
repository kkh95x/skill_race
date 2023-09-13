


import 'package:skill_race/src/project/domain/project.dart';

abstract class PostProjectRepository{
  Future<void> create(PostProject postProject);
  Stream<List<PostProject>> getAll(int limit);
  Stream<List<PostProject>> getAllVideo(int limit);

  Stream<List<PostProject>>getMyVideo(String id, int limit);
  Stream<List<PostProject>>getMyImages(String id, int limit);

  Future<PostProject?>get(String id);
}