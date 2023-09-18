// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_specialization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleSpecilazation _$SingleSpecilazationFromJson(Map<String, dynamic> json) {
  return _SingleSpecilazation.fromJson(json);
}

/// @nodoc
mixin _$SingleSpecilazation {
  String get specialization => throw _privateConstructorUsedError;
  String? get subSpecialization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleSpecilazationCopyWith<SingleSpecilazation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleSpecilazationCopyWith<$Res> {
  factory $SingleSpecilazationCopyWith(
          SingleSpecilazation value, $Res Function(SingleSpecilazation) then) =
      _$SingleSpecilazationCopyWithImpl<$Res, SingleSpecilazation>;
  @useResult
  $Res call({String specialization, String? subSpecialization});
}

/// @nodoc
class _$SingleSpecilazationCopyWithImpl<$Res, $Val extends SingleSpecilazation>
    implements $SingleSpecilazationCopyWith<$Res> {
  _$SingleSpecilazationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialization = null,
    Object? subSpecialization = freezed,
  }) {
    return _then(_value.copyWith(
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String,
      subSpecialization: freezed == subSpecialization
          ? _value.subSpecialization
          : subSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleSpecilazationCopyWith<$Res>
    implements $SingleSpecilazationCopyWith<$Res> {
  factory _$$_SingleSpecilazationCopyWith(_$_SingleSpecilazation value,
          $Res Function(_$_SingleSpecilazation) then) =
      __$$_SingleSpecilazationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String specialization, String? subSpecialization});
}

/// @nodoc
class __$$_SingleSpecilazationCopyWithImpl<$Res>
    extends _$SingleSpecilazationCopyWithImpl<$Res, _$_SingleSpecilazation>
    implements _$$_SingleSpecilazationCopyWith<$Res> {
  __$$_SingleSpecilazationCopyWithImpl(_$_SingleSpecilazation _value,
      $Res Function(_$_SingleSpecilazation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialization = null,
    Object? subSpecialization = freezed,
  }) {
    return _then(_$_SingleSpecilazation(
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String,
      subSpecialization: freezed == subSpecialization
          ? _value.subSpecialization
          : subSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleSpecilazation
    with DiagnosticableTreeMixin
    implements _SingleSpecilazation {
  const _$_SingleSpecilazation(
      {required this.specialization, this.subSpecialization});

  factory _$_SingleSpecilazation.fromJson(Map<String, dynamic> json) =>
      _$$_SingleSpecilazationFromJson(json);

  @override
  final String specialization;
  @override
  final String? subSpecialization;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SingleSpecilazation(specialization: $specialization, subSpecialization: $subSpecialization)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SingleSpecilazation'))
      ..add(DiagnosticsProperty('specialization', specialization))
      ..add(DiagnosticsProperty('subSpecialization', subSpecialization));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleSpecilazation &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.subSpecialization, subSpecialization) ||
                other.subSpecialization == subSpecialization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, specialization, subSpecialization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleSpecilazationCopyWith<_$_SingleSpecilazation> get copyWith =>
      __$$_SingleSpecilazationCopyWithImpl<_$_SingleSpecilazation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleSpecilazationToJson(
      this,
    );
  }
}

abstract class _SingleSpecilazation implements SingleSpecilazation {
  const factory _SingleSpecilazation(
      {required final String specialization,
      final String? subSpecialization}) = _$_SingleSpecilazation;

  factory _SingleSpecilazation.fromJson(Map<String, dynamic> json) =
      _$_SingleSpecilazation.fromJson;

  @override
  String get specialization;
  @override
  String? get subSpecialization;
  @override
  @JsonKey(ignore: true)
  _$$_SingleSpecilazationCopyWith<_$_SingleSpecilazation> get copyWith =>
      throw _privateConstructorUsedError;
}
