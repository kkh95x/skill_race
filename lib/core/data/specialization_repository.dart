

import 'package:skill_race/core/domain/specialization.dart';

abstract class SpecializationRepository{
  Future<List<Specialization>> get();
}