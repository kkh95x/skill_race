



import 'package:skill_race/src/employe/domain/faculaty.dart';

abstract class FacultyRepository{
  Future<List<Faculaty>> getAll();
  Future<void> saveAll(List<Faculaty> fas);
}