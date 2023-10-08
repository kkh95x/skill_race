

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/domain/officer_state.dart';

final getCompleteOfferProvider=StateNotifierProvider<PaginationNotifier<Officer>,PaginationState<Officer>>((ref) {

return PaginationNotifier(getSnapshoots: (limit) => Stream.value([
   Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.finshedFromEmployee, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(),  employeeId: "employeeId"
 , deadLine: DateTime.now().subtract(const Duration(days: 2)),
 updateAt:DateTime.now().subtract(const Duration(days: 2)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
 link: "https://www.figma.com/file/zCUF9WD5oATLnfc0eh1vJN/Fasting-App-Exploration-(Community)?node-id=1%3A225&mode=dev"
   ),
  
   Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.claimFinancialEntitlements, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
 , deadLine: DateTime.now().add(const Duration(days: 10)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
 link: "https://www.figma.com/file/zCUF9WD5oATLnfc0eh1vJN/Fasting-App-Exploration-(Community)?node-id=1%3A225&mode=dev"
   ),
   Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.adminTheOfficerInReview, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
 , deadLine: DateTime.now().add(const Duration(days: 10)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
 link: "https://www.figma.com/file/zCUF9WD5oATLnfc0eh1vJN/Fasting-App-Exploration-(Community)?node-id=1%3A225&mode=dev"
   ),
    Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.complete, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
 , deadLine: DateTime.now().add(const Duration(days: 10)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
 link: "https://www.figma.com/file/zCUF9WD5oATLnfc0eh1vJN/Fasting-App-Exploration-(Community)?node-id=1%3A225&mode=dev"
   ),
 
]), recordPerBatch: 5)..init();
});