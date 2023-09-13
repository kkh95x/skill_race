

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/user/data/firebase_app_user_repository.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

final getUserById=FutureProvider.family<AppUser?,String>((ref,id) => ref.read(userRepositoryProvider).getById(id));