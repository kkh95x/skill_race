// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'officer_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfficerState _$$_OfficerStateFromJson(Map<String, dynamic> json) =>
    _$_OfficerState(
      name: $enumDecode(_$OfficerStutasEnumMap, json['name']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_OfficerStateToJson(_$_OfficerState instance) =>
    <String, dynamic>{
      'name': _$OfficerStutasEnumMap[instance.name]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$OfficerStutasEnumMap = {
  OfficerStutas.pending: 'pending',
  OfficerStutas.acceptedFromEmployee: 'acceptedFromEmployee',
  OfficerStutas.editFromEmployeed: 'editFromEmployeed',
  OfficerStutas.acceptedEditFromHiring: 'acceptedEditFromHiring',
  OfficerStutas.rejectedEditFromHiring: 'rejectedEditFromHiring',
  OfficerStutas.rejectedFromEmployee: 'rejectedFromEmployee',
  OfficerStutas.employeeAddAnotheroption: 'employeeAddAnotheroption',
  OfficerStutas.wattingHiringToPay: 'wattingHiringToPay',
  OfficerStutas.waitingEmpToStart: 'waitingEmpToStart',
  OfficerStutas.finishTheOfficerFromEmployee: 'finishTheOfficerFromEmployee',
  OfficerStutas.claimFinancialEntitlements: 'claimFinancialEntitlements',
  OfficerStutas.adminTheOfficerInReview: 'adminTheOfficerInReview',
  OfficerStutas.adminSendTheFinancialEntitlements:
      'adminSendTheFinancialEntitlements',
  OfficerStutas.submitADisputeFromHiring: 'submitADisputeFromHiring',
  OfficerStutas.adminDisputeInReview: 'adminDisputeInReview',
  OfficerStutas.adminReturnMoneyToHiring: 'adminReturnMoneyToHiring',
  OfficerStutas.finshedFromEmployee: 'finshedFromEmployee',
};
