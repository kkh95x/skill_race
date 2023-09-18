import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'faculaty.freezed.dart';

part 'faculaty.g.dart';

@freezed
class Faculaty with _$Faculaty {
  const factory Faculaty({
   String? id,
   required String name 
  }) = _Faculaty;

  factory Faculaty.fromJson(Map<String, Object?> json)
      => _$FaculatyFromJson(json);
}