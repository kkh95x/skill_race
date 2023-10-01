


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_race/core/application/pagination/pagination_notifier.dart';
import 'package:skill_race/core/application/pagination/pagination_state.dart';
import 'package:skill_race/src/officer/domain/officer.dart';
import 'package:skill_race/src/officer/domain/officer_state.dart';

final getRequestOfferProvider=StateNotifierProvider<PaginationNotifier<Officer>,PaginationState<Officer>>((ref) {

return PaginationNotifier(getSnapshoots: (limit) => Stream.value([
   Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.pending, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
 , deadLine: DateTime.now().add(const Duration(days: 10)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
   ),
  
   Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.wattingHiringToPay, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
 , deadLine: DateTime.now().add(const Duration(days: 10)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
   ),
   Officer(title: "Title", price: 200, currentStatus: OfficerState(name: OfficerStutas.waitingEmpToStart, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
 , deadLine: DateTime.now().add(const Duration(days: 10)),
 description: "descrption descrption descrption descrption descrption descrption descrption",
   )
]), recordPerBatch: 5)..init();
});


// FutureProvider<List<Officer>>((ref) =>Future.value([
//   Officer(title: "title", price: 200, currentStatus: OfficerState(name: OfficerStutas.pending, createdAt: DateTime.now()), hiringId: "hiringId", createAt: DateTime.now(), updateAt: DateTime.now(), employeeId: "employeeId"
//  , deadLine: DateTime.now().add(Duration(days: 10)),
//  description: "descrption",

//   )
// ]));