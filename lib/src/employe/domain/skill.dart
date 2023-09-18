
import 'package:freezed_annotation/freezed_annotation.dart';
part 'skill.freezed.dart';

part 'skill.g.dart';
@freezed
class Skill with _$Skill{
  const factory Skill({
    String? id,    
    required String name,


    
    
    
   
  }) = _Skill;

  factory Skill.fromJson(Map<String, Object?> json)
      => _$SkillFromJson(json);
}