


 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'single_specialization.freezed.dart';

part 'single_specialization.g.dart';

@freezed
class SingleSpecilazation with _$SingleSpecilazation {
  const factory SingleSpecilazation({
   required String specialization,
    String? subSpecialization
    // String? country,
    // String? city,
  }) = _SingleSpecilazation;

  factory SingleSpecilazation.fromJson(Map<String, Object?> json)
      => _$SingleSpecilazationFromJson(json);
}