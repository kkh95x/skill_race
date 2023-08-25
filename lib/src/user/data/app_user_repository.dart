import 'package:skill_race/src/user/domain/app_user.dart';

abstract class AppUserRepository {
  Future<AppUser?> create(AppUser appUser);
  Future<AppUser?> getById(String id);
  Future<void> update(AppUser appUser);
}
