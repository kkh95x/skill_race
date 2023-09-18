


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/employe/data/firestore_skill_repository.dart';

final getSkillsProvider=FutureProvider((ref) => ref.read(skilRepositoryProvider).getAll());