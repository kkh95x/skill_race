import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'certificate_info.freezed.dart';

part 'certificate_info.g.dart';

@freezed
class CeritificateInfo with _$CeritificateInfo {
  const factory CeritificateInfo({
    required String name,
    DateTime? date,
    String? trainedEntity,
   
  }) = _CeritificateInfo;

  factory CeritificateInfo.fromJson(Map<String, Object?> json)
      => _$CeritificateInfoFromJson(json);
}
