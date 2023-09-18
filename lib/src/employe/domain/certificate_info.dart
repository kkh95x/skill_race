import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'certificate_info.freezed.dart';

part 'certificate_info.g.dart';

@freezed
class CeritificateInfo with _$CeritificateInfo {
  const factory CeritificateInfo({
    required String name,
    required DateTime createdAt,
    DateTime? startDate,
     DateTime? endDate,
    String? certificateFrom,
   
  }) = _CeritificateInfo;

  factory CeritificateInfo.fromJson(Map<String, Object?> json)
      => _$CeritificateInfoFromJson(json);
}
