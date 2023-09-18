import 'package:skill_race/src/user/domain/app_user.dart';

abstract class AppUserRepository {
  Future<AppUser> create(AppUser appUser);
  Future<AppUser?> getById(String id);
  Future<AppUser?> getByEmail(String email);
  Future<AppUser> update(AppUser appUser);
}
