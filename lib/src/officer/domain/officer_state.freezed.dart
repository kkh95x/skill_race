// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'officer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfficerState _$OfficerStateFromJson(Map<String, dynamic> json) {
  return _OfficerState.fromJson(json);
}

/// @nodoc
mixin _$OfficerState {
  OfficerStutas get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficerStateCopyWith<OfficerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficerStateCopyWith<$Res> {
  factory $OfficerStateCopyWith(
          OfficerState value, $Res Function(OfficerState) then) =
      _$OfficerStateCopyWithImpl<$Res, OfficerState>;
  @useResult
  $Res call({OfficerStutas name, DateTime createdAt});
}

/// @nodoc
class _$OfficerStateCopyWithImpl<$Res, $Val extends OfficerState>
    implements $OfficerStateCopyWith<$Res> {
  _$OfficerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as OfficerStutas,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfficerStateCopyWith<$Res>
    implements $OfficerStateCopyWith<$Res> {
  factory _$$_OfficerStateCopyWith(
          _$_OfficerState value, $Res Function(_$_OfficerState) then) =
      __$$_OfficerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OfficerStutas name, DateTime createdAt});
}

/// @nodoc
class __$$_OfficerStateCopyWithImpl<$Res>
    extends _$OfficerStateCopyWithImpl<$Res, _$_OfficerState>
    implements _$$_OfficerStateCopyWith<$Res> {
  __$$_OfficerStateCopyWithImpl(
      _$_OfficerState _value, $Res Function(_$_OfficerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_$_OfficerState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as OfficerStutas,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfficerState implements _OfficerState {
  _$_OfficerState({required this.name, required this.createdAt});

  factory _$_OfficerState.fromJson(Map<String, dynamic> json) =>
      _$$_OfficerStateFromJson(json);

  @override
  final OfficerStutas name;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'OfficerState(name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfficerState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficerStateCopyWith<_$_OfficerState> get copyWith =>
      __$$_OfficerStateCopyWithImpl<_$_OfficerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficerStateToJson(
      this,
    );
  }
}

abstract class _OfficerState implements OfficerState {
  factory _OfficerState(
      {required final OfficerStutas name,
      required final DateTime createdAt}) = _$_OfficerState;

  factory _OfficerState.fromJson(Map<String, dynamic> json) =
      _$_OfficerState.fromJson;

  @override
  OfficerStutas get name;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_OfficerStateCopyWith<_$_OfficerState> get copyWith =>
      throw _privateConstructorUsedError;
}
