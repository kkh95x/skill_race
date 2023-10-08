
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/financial_account/domain/app_transactions.dart';

final getTransactionProvider=StateNotifierProvider<PaginationNotifier<AppTransaction>,PaginationState<AppTransaction>>((ref) {

return PaginationNotifier(getSnapshoots: (limit) => Stream.value([
 AppTransaction(fromAccountId: "fromAccountId", toAccountId: "toAccountId", searchContent: ["searchContent"], partiesId: ["partiesId"], amount: 120, status: Status.finished, operationType: OperationType.income, dateTime: DateTime.now(), description: "The offer amount has been transferred to your account",type:TypeTransaction.income),
 AppTransaction(fromAccountId: "fromAccountId", toAccountId: "toAccountId", searchContent: ["searchContent"], partiesId: ["partiesId"], amount: 120, status: Status.finished, operationType: OperationType.income, dateTime: DateTime.now(), description: "The offer amount has been transferred to your account",type:TypeTransaction.income),
 AppTransaction(fromAccountId: "fromAccountId", toAccountId: "toAccountId", searchContent: ["searchContent"], partiesId: ["partiesId"], amount: 120, status: Status.finished, operationType: OperationType.income, dateTime: DateTime.now(), description: "The offer amount has been transferred to your account",type:TypeTransaction.income),
 AppTransaction(fromAccountId: "fromAccountId", toAccountId: "toAccountId", searchContent: ["searchContent"], partiesId: ["partiesId"], amount: 120, status: Status.finished, operationType: OperationType.income, dateTime: DateTime.now(), description: "The offer amount has been transferred to your account",type:TypeTransaction.income),

]), recordPerBatch: 5)..init();
});