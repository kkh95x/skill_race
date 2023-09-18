



 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:skill_race/src/hiring/domain/single_specialization.dart';

part 'need_employe_request.freezed.dart';

part 'need_employe_request.g.dart';
enum NeedEmployeedRequestState{pending,recived,reject,complecte}

@freezed
class NeedEmployeeRequest with _$NeedEmployeeRequest {
  const factory NeedEmployeeRequest({
    required String hiringId,
    required DateTime createdAt,
    String? id,
    @Default(NeedEmployeedRequestState.pending) NeedEmployeedRequestState state,
    String? companyName,
    String? companyFiled,
    String? country,
    String? city,
    String? exerienceLevel,
    String? jobType,
    List<SingleSpecilazation>? specializations,
    List<String>? skills,
    int? numberOfEmployees,
    String? typeOfTravelVisa,
    double? workingHours,
    double? salary,
    double? durationMonthOfContract,
    int? weekends,
    int? age,
    String? gender


  }) = _NeedEmployeeRequest;

  factory NeedEmployeeRequest.fromJson(Map<String, Object?> json)
      => _$NeedEmployeeRequestFromJson(json);
}