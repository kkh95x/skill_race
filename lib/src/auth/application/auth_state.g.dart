// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      state: $enumDecode(_$AuthStatusEnumMap, json['state']),
      currentUser: json['currentUser'] == null
          ? null
          : AppUser.fromJson(json['currentUser'] as Map<String, dynamic>),
      id: json['id'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'state': _$AuthStatusEnumMap[instance.state]!,
      'currentUser': instance.currentUser,
      'id': instance.id,
      'email': instance.email,
    };

const _$AuthStatusEnumMap = {
  AuthStatus.loading: 'loading',
  AuthStatus.unAtuth: 'unAtuth',
  AuthStatus.auth: 'auth',
  AuthStatus.createAccountByEmail: 'createAccountByEmail',
  AuthStatus.confirmEmail: 'confirmEmail',
  AuthStatus.newPasswordEntry: 'newPasswordEntry',
  AuthStatus.iterestsEntery: 'iterestsEntery',
};
