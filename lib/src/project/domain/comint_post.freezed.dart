// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comint_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComintPost _$ComintPostFromJson(Map<String, dynamic> json) {
  return _ComintPost.fromJson(json);
}

/// @nodoc
mixin _$ComintPost {
  String get userId => throw _privateConstructorUsedError;
  String get comint => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComintPostCopyWith<ComintPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComintPostCopyWith<$Res> {
  factory $ComintPostCopyWith(
          ComintPost value, $Res Function(ComintPost) then) =
      _$ComintPostCopyWithImpl<$Res, ComintPost>;
  @useResult
  $Res call({String userId, String comint, DateTime createdAt});
}

/// @nodoc
class _$ComintPostCopyWithImpl<$Res, $Val extends ComintPost>
    implements $ComintPostCopyWith<$Res> {
  _$ComintPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? comint = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comint: null == comint
          ? _value.comint
          : comint // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComintPostCopyWith<$Res>
    implements $ComintPostCopyWith<$Res> {
  factory _$$_ComintPostCopyWith(
          _$_ComintPost value, $Res Function(_$_ComintPost) then) =
      __$$_ComintPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String comint, DateTime createdAt});
}

/// @nodoc
class __$$_ComintPostCopyWithImpl<$Res>
    extends _$ComintPostCopyWithImpl<$Res, _$_ComintPost>
    implements _$$_ComintPostCopyWith<$Res> {
  __$$_ComintPostCopyWithImpl(
      _$_ComintPost _value, $Res Function(_$_ComintPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? comint = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ComintPost(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comint: null == comint
          ? _value.comint
          : comint // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComintPost implements _ComintPost {
  const _$_ComintPost(
      {required this.userId, required this.comint, required this.createdAt});

  factory _$_ComintPost.fromJson(Map<String, dynamic> json) =>
      _$$_ComintPostFromJson(json);

  @override
  final String userId;
  @override
  final String comint;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ComintPost(userId: $userId, comint: $comint, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComintPost &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comint, comint) || other.comint == comint) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, comint, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComintPostCopyWith<_$_ComintPost> get copyWith =>
      __$$_ComintPostCopyWithImpl<_$_ComintPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComintPostToJson(
      this,
    );
  }
}

abstract class _ComintPost implements ComintPost {
  const factory _ComintPost(
      {required final String userId,
      required final String comint,
      required final DateTime createdAt}) = _$_ComintPost;

  factory _ComintPost.fromJson(Map<String, dynamic> json) =
      _$_ComintPost.fromJson;

  @override
  String get userId;
  @override
  String get comint;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ComintPostCopyWith<_$_ComintPost> get copyWith =>
      throw _privateConstructorUsedError;
}
