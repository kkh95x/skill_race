


 import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review.freezed.dart';

part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    String? id,
    required String fromUserId,
    required String toUserId,
    required double stars,
    required DateTime createdAt,
    String? text,
    // String? city,
  }) = _Review;

  factory Review.fromJson(Map<String, Object?> json)
      => _$ReviewFromJson(json);
}