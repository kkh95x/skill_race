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
      fullName: json['fullName'] as String?,
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']),
      financialAccountId: json['financialAccountId'] as String?,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'state': _$AuthStatusEnumMap[instance.state]!,
      'currentUser': instance.currentUser?.toJson(),
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'accountType': _$AccountTypeEnumMap[instance.accountType],
      'financialAccountId': instance.financialAccountId,
    };

const _$AuthStatusEnumMap = {
  AuthStatus.loading: 'loading',
  AuthStatus.unAtuth: 'unAtuth',
  AuthStatus.selectType: 'selectType',
  AuthStatus.auth: 'auth',
  AuthStatus.hiringEntry: 'hiringEntry',
  AuthStatus.empolyeeEntery: 'empolyeeEntery',
};

const _$AccountTypeEnumMap = {
  AccountType.employe: 'employe',
  AccountType.hiring: 'hiring',
};
