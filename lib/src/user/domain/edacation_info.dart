import 'package:freezed_annotation/freezed_annotation.dart';
part 'edacation_info.freezed.dart';

part 'edacation_info.g.dart';@freezed
class EdaucationInfo with _$EdaucationInfo{
  const factory EdaucationInfo({
   required String name,
   String? unvircety,
   DateTime? startDate,
   DateTime? endDate,
   bool? isgraduate,
    
    
   
  }) = _EdaucationInfo;

  factory EdaucationInfo.fromJson(Map<String, Object?> json)
      => _$EdaucationInfoFromJson(json);
}