


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_race/src/user/domain/app_user.dart';

part 'auth_state.g.dart';
part 'auth_state.freezed.dart';


@freezed
class AuthState with _$AuthState {
  const factory AuthState({
   required AuthStatus state,
   AppUser? currentUser,
   String? id,
   String? email, 
   String? fullName,
   AccountType? accountType,
    
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json)
      => _$AuthStateFromJson(json);
}


enum AuthStatus{
  
  loading,
  unAtuth,
  selectType,
  auth,
  // createAccountByEmail,
  // confirmEmail,
  // newPasswordEntry,
  hiringEntry,
  empolyeeEntery,
  
}
