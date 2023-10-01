// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archives.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Archives _$ArchivesFromJson(Map<String, dynamic> json) {
  return _Archives.fromJson(json);
}

/// @nodoc
mixin _$Archives {
  String? get id => throw _privateConstructorUsedError;
  String get refrenceId => throw _privateConstructorUsedError;
  String get userOwner => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ArchivesType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArchivesCopyWith<Archives> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchivesCopyWith<$Res> {
  factory $ArchivesCopyWith(Archives value, $Res Function(Archives) then) =
      _$ArchivesCopyWithImpl<$Res, Archives>;
  @useResult
  $Res call(
      {String? id,
      String refrenceId,
      String userOwner,
      DateTime createdAt,
      ArchivesType type});
}

/// @nodoc
class _$ArchivesCopyWithImpl<$Res, $Val extends Archives>
    implements $ArchivesCopyWith<$Res> {
  _$ArchivesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? refrenceId = null,
    Object? userOwner = null,
    Object? createdAt = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      refrenceId: null == refrenceId
          ? _value.refrenceId
          : refrenceId // ignore: cast_nullable_to_non_nullable
              as String,
      userOwner: null == userOwner
          ? _value.userOwner
          : userOwner // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArchivesType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArchivesCopyWith<$Res> implements $ArchivesCopyWith<$Res> {
  factory _$$_ArchivesCopyWith(
          _$_Archives value, $Res Function(_$_Archives) then) =
      __$$_ArchivesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String refrenceId,
      String userOwner,
      DateTime createdAt,
      ArchivesType type});
}

/// @nodoc
class __$$_ArchivesCopyWithImpl<$Res>
    extends _$ArchivesCopyWithImpl<$Res, _$_Archives>
    implements _$$_ArchivesCopyWith<$Res> {
  __$$_ArchivesCopyWithImpl(
      _$_Archives _value, $Res Function(_$_Archives) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? refrenceId = null,
    Object? userOwner = null,
    Object? createdAt = null,
    Object? type = null,
  }) {
    return _then(_$_Archives(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      refrenceId: null == refrenceId
          ? _value.refrenceId
          : refrenceId // ignore: cast_nullable_to_non_nullable
              as String,
      userOwner: null == userOwner
          ? _value.userOwner
          : userOwner // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArchivesType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Archives with DiagnosticableTreeMixin implements _Archives {
  const _$_Archives(
      {this.id,
      required this.refrenceId,
      required this.userOwner,
      required this.createdAt,
      required this.type});

  factory _$_Archives.fromJson(Map<String, dynamic> json) =>
      _$$_ArchivesFromJson(json);

  @override
  final String? id;
  @override
  final String refrenceId;
  @override
  final String userOwner;
  @override
  final DateTime createdAt;
  @override
  final ArchivesType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Archives(id: $id, refrenceId: $refrenceId, userOwner: $userOwner, createdAt: $createdAt, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Archives'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('refrenceId', refrenceId))
      ..add(DiagnosticsProperty('userOwner', userOwner))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Archives &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refrenceId, refrenceId) ||
                other.refrenceId == refrenceId) &&
            (identical(other.userOwner, userOwner) ||
                other.userOwner == userOwner) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, refrenceId, userOwner, createdAt, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArchivesCopyWith<_$_Archives> get copyWith =>
      __$$_ArchivesCopyWithImpl<_$_Archives>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArchivesToJson(
      this,
    );
  }
}

abstract class _Archives implements Archives {
  const factory _Archives(
      {final String? id,
      required final String refrenceId,
      required final String userOwner,
      required final DateTime createdAt,
      required final ArchivesType type}) = _$_Archives;

  factory _Archives.fromJson(Map<String, dynamic> json) = _$_Archives.fromJson;

  @override
  String? get id;
  @override
  String get refrenceId;
  @override
  String get userOwner;
  @override
  DateTime get createdAt;
  @override
  ArchivesType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ArchivesCopyWith<_$_Archives> get copyWith =>
      throw _privateConstructorUsedError;
}
