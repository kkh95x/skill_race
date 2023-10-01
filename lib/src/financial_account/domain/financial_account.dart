



 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'financial_account.freezed.dart';

part 'financial_account.g.dart';

@freezed
class FinancialAccount with _$FinancialAccount {
  const factory FinancialAccount({
    String? id,
    required double balance,
    required double income,
    required double outcome,
     required String referenceId,
  
    // String? city,
  }) = _FinancialAccount;

  factory FinancialAccount.fromJson(Map<String, Object?> json)
      => _$FinancialAccountFromJson(json);
}
