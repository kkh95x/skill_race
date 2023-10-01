
import 'package:freezed_annotation/freezed_annotation.dart';
part 'officer_state.g.dart';
part 'officer_state.freezed.dart';
@freezed
abstract class OfficerState with _$OfficerState{
factory OfficerState({
 required OfficerStutas name,
 required DateTime createdAt,

})=_OfficerState;
  factory OfficerState.fromJson(Map<String, Object?> json)
      => _$OfficerStateFromJson(json);}
enum  OfficerStutas{
  //whene create new
  pending,
  //whene accepte from emp
  acceptedFromEmployee, 
  //whene wmp need to edit the description,
  editFromEmployeed,
  //applye hiring the edit,
  acceptedEditFromHiring,
  //not applye hiring the edit,
  rejectedEditFromHiring,
  //rejected the office from the 
  rejectedFromEmployee,
  //emp add description
  employeeAddAnotheroption,
  //wait the hiring to Pay 
  wattingHiringToPay,
  //then wait emp to start
  waitingEmpToStart,
  //when End
  finishTheOfficerFromEmployee,
  //claimFinancialEntitlements
  claimFinancialEntitlements,
  //send Financial Entitlements from Admin
  adminTheOfficerInReview,
  adminSendTheFinancialEntitlements,
  //تقديم نزاع
  submitADisputeFromHiring,
  adminDisputeInReview,
  adminReturnMoneyToHiring,
  finshedFromEmployee,}