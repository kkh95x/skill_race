import 'package:freezed_annotation/freezed_annotation.dart';
part 'edacation_info.freezed.dart';

part 'edacation_info.g.dart';
@freezed
class EdaucationInfo with _$EdaucationInfo{
  const factory EdaucationInfo({
    String? schoole,
   String? faculty,
   String? university,
   DateTime? startDate,
   DateTime? endDate,
    
    
   
  }) = _EdaucationInfo;

  factory EdaucationInfo.fromJson(Map<String, Object?> json)
      => _$EdaucationInfoFromJson(json);
}