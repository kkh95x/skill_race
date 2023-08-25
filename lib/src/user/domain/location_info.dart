
import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_info.freezed.dart';

part 'location_info.g.dart';
@freezed
class LocationInfo with _$LocationInfo {
  const factory LocationInfo({
   required String country,
   String? city,
   String? street,
   String? office,
    
    
    required int age,
  }) = _LocationInfo;

  factory LocationInfo.fromJson(Map<String, Object?> json)
      => _$LocationInfoFromJson(json);
}