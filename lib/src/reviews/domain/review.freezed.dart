// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String? get id => throw _privateConstructorUsedError;
  String get fromUserId => throw _privateConstructorUsedError;
  String get toUserId => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String? id,
      String fromUserId,
      String toUserId,
      double stars,
      DateTime createdAt,
      String? text});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromUserId = null,
    Object? toUserId = null,
    Object? stars = null,
    Object? createdAt = null,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      toUserId: null == toUserId
          ? _value.toUserId
          : toUserId // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String fromUserId,
      String toUserId,
      double stars,
      DateTime createdAt,
      String? text});
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromUserId = null,
    Object? toUserId = null,
    Object? stars = null,
    Object? createdAt = null,
    Object? text = freezed,
  }) {
    return _then(_$_Review(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      toUserId: null == toUserId
          ? _value.toUserId
          : toUserId // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review with DiagnosticableTreeMixin implements _Review {
  const _$_Review(
      {this.id,
      required this.fromUserId,
      required this.toUserId,
      required this.stars,
      required this.createdAt,
      this.text});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final String? id;
  @override
  final String fromUserId;
  @override
  final String toUserId;
  @override
  final double stars;
  @override
  final DateTime createdAt;
  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Review(id: $id, fromUserId: $fromUserId, toUserId: $toUserId, stars: $stars, createdAt: $createdAt, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Review'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fromUserId', fromUserId))
      ..add(DiagnosticsProperty('toUserId', toUserId))
      ..add(DiagnosticsProperty('stars', stars))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fromUserId, toUserId, stars, createdAt, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {final String? id,
      required final String fromUserId,
      required final String toUserId,
      required final double stars,
      required final DateTime createdAt,
      final String? text}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  String? get id;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  double get stars;
  @override
  DateTime get createdAt;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
