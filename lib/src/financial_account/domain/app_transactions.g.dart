// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppTransaction _$$_AppTransactionFromJson(Map<String, dynamic> json) =>
    _$_AppTransaction(
      id: json['id'] as String?,
      fromAccountId: json['fromAccountId'] as String,
      toAccountId: json['toAccountId'] as String,
      type: $enumDecodeNullable(_$TypeTransactionEnumMap, json['type']),
      offerId: json['offerId'] as String?,
      searchContent: (json['searchContent'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      partiesId:
          (json['partiesId'] as List<dynamic>).map((e) => e as String).toList(),
      amount: (json['amount'] as num).toDouble(),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      operationType: $enumDecode(_$OperationTypeEnumMap, json['operationType']),
      dateTime: DateTime.parse(json['dateTime'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_AppTransactionToJson(_$_AppTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromAccountId': instance.fromAccountId,
      'toAccountId': instance.toAccountId,
      'type': _$TypeTransactionEnumMap[instance.type],
      'offerId': instance.offerId,
      'searchContent': instance.searchContent,
      'partiesId': instance.partiesId,
      'amount': instance.amount,
      'status': _$StatusEnumMap[instance.status]!,
      'operationType': _$OperationTypeEnumMap[instance.operationType]!,
      'dateTime': instance.dateTime.toIso8601String(),
      'description': instance.description,
    };

const _$TypeTransactionEnumMap = {
  TypeTransaction.offer: 'offer',
  TypeTransaction.income: 'income',
  TypeTransaction.withdrew: 'withdrew',
};

const _$StatusEnumMap = {
  Status.initiated: 'initiated',
  Status.canceled: 'canceled',
  Status.finished: 'finished',
};

const _$OperationTypeEnumMap = {
  OperationType.income: 'income',
  OperationType.withdrew: 'withdrew',
};
