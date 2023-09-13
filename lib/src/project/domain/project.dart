
import 'package:freezed_annotation/freezed_annotation.dart';
part 'project.freezed.dart';

part 'project.g.dart';
@freezed
class PostProject with _$PostProject {
  const factory PostProject({
   String? id,
   required String title,
   required String description,
   required String specialization,
   required double price,
   required DateTime createdAt,
   required String userId,
   required PostProjectType postProjectType,
   @Default(0.0) double stars,
   @Default(0) int likesCount,
   @Default(0) int comintsCount,   
   String? supSpecialization,
   String? videoUrl,
   List<String>? images,
    
    
  }) = _PostProject;

  factory PostProject.fromJson(Map<String, Object?> json)
      => _$PostProjectFromJson(json);
}

enum PostProjectType{video,images}