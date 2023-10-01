import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/project/data/firestore_post_project_repository.dart';
import 'package:skill_race/src/project/domain/project.dart';

final getProjectByIdProvider=StreamProvider.family<PostProject?,String>((ref,id) => ref.read(postProjectRepositoryProvider).get(id));