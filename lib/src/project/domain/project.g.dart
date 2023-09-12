// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostProject _$$_PostProjectFromJson(Map<String, dynamic> json) =>
    _$_PostProject(
      id: json['id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      specialization: json['specialization'] as String,
      price: (json['price'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
      postProjectType:
          $enumDecode(_$PostProjectTypeEnumMap, json['postProjectType']),
      stars: json['stars'] as int? ?? 0,
      likesCount: json['likesCount'] as int? ?? 0,
      comintsCount: json['comintsCount'] as int? ?? 0,
      supSpecialization: json['supSpecialization'] as String?,
      videoUrl: json['videoUrl'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PostProjectToJson(_$_PostProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'specialization': instance.specialization,
      'price': instance.price,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
      'postProjectType': _$PostProjectTypeEnumMap[instance.postProjectType]!,
      'stars': instance.stars,
      'likesCount': instance.likesCount,
      'comintsCount': instance.comintsCount,
      'supSpecialization': instance.supSpecialization,
      'videoUrl': instance.videoUrl,
      'images': instance.images,
    };

const _$PostProjectTypeEnumMap = {
  PostProjectType.video: 'video',
  PostProjectType.images: 'images',
};
