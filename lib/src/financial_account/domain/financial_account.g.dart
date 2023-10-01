// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinancialAccount _$$_FinancialAccountFromJson(Map<String, dynamic> json) =>
    _$_FinancialAccount(
      id: json['id'] as String?,
      balance: (json['balance'] as num).toDouble(),
      income: (json['income'] as num).toDouble(),
      outcome: (json['outcome'] as num).toDouble(),
      referenceId: json['referenceId'] as String,
    );

Map<String, dynamic> _$$_FinancialAccountToJson(_$_FinancialAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'income': instance.income,
      'outcome': instance.outcome,
      'referenceId': instance.referenceId,
    };
