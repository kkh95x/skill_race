


 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'hiring.freezed.dart';

part 'hiring.g.dart';

@freezed
class Hiring with _$Hiring {
  const factory Hiring({
    String? companyName,
    String? companyField,
    // String? city,
  }) = _Hiring;

  factory Hiring.fromJson(Map<String, Object?> json)
      => _$HiringFromJson(json);
}