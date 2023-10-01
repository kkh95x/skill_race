


import 'package:freezed_annotation/freezed_annotation.dart';
part 'comint_post.freezed.dart';

part 'comint_post.g.dart';
@freezed
class ComintPost with _$ComintPost {
  const factory ComintPost({
 required String userId,
 required String comint,
 required DateTime createdAt,
    
    
  }) = _ComintPost;

  factory ComintPost.fromJson(Map<String, Object?> json)
      => _$ComintPostFromJson(json);
}

