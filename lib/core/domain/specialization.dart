

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'specialization.freezed.dart';

part 'specialization.g.dart';

@freezed
class Specialization with _$Specialization {
  const factory Specialization({
    required String name,
    required List<String> subSpecialization,
   
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, Object?> json)
      => _$SpecializationFromJson(json);
}
