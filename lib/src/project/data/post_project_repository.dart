


import 'package:skill_race/src/project/domain/project.dart';

abstract class PostProjectRepository{
  Future<void> create(PostProject postProject);
  Future<List<PostProject>?> getAll();
  Future<List<PostProject>?>getMin(String id);
}