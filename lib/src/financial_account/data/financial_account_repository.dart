


import 'package:skill_race/src/financial_account/domain/financial_account.dart';

abstract class FinancialAccountReposiotry{
  Future<FinancialAccount> create(FinancialAccount financialAccount);
  Future<FinancialAccount?> get(String referenceId);
  Stream <FinancialAccount?> getAsStream(String id);
}