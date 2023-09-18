

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/employe/data/firestore_faculty_repository.dart';

final getFacutilyProvider=FutureProvider((ref) => ref.read(facultyRepositoryProvider).getAll());