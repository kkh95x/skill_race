import 'package:freezed_annotation/freezed_annotation.dart';
part 'expertise.freezed.dart';

part 'expertise.g.dart';
@freezed
class Expertise with _$Expertise{
  const factory Expertise({
    required String workType,
    required DateTime createdAt,
    DateTime? startDate,
     DateTime? endDate,
    String? companyName,
    
    
   
  }) = _Expertise;

  factory Expertise.fromJson(Map<String, Object?> json)
      => _$ExpertiseFromJson(json);
}