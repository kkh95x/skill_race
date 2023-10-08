// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_transactions.g.dart';
part 'app_transactions.freezed.dart';

enum OperationType {
  income,
  withdrew,
}

enum TypeTransaction { offer, income,  withdrew,  }

enum Status { initiated, canceled, finished }

@freezed
class AppTransaction with _$AppTransaction {
  factory AppTransaction({
   String? id,
    required String fromAccountId,
    required String toAccountId,

    TypeTransaction? type,
    String? offerId,
    required List<String> searchContent,
    required List<String> partiesId,
    required double amount,
    required Status status,
    required OperationType operationType,
    required DateTime dateTime,
    required String description,
  }) = _AppTransaction;
  factory AppTransaction.fromJson(Map<String, dynamic> json) =>
      _$AppTransactionFromJson(json);
}
