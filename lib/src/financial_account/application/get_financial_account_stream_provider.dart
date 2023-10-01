
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/src/auth/application/auth_notifer.dart';
import 'package:skill_race/src/financial_account/data/firestore_financial_account_repository.dart';

final getFinancialAccountStreamProvider=StreamProvider((ref) => ref.read(financialAccountReposiotryProvider).getAsStream(ref.read(userAuthNotifer).financialAccountId??""));