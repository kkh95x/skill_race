

import 'package:skill_race/src/employe/domain/skill.dart';

abstract class SkilRepository{
  Future<List<Skill>> getAll();
  // Future<void> saveAll(List<Skill> skills);
}