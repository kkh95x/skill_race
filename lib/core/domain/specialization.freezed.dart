// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Specialization _$SpecializationFromJson(Map<String, dynamic> json) {
  return _Specialization.fromJson(json);
}

/// @nodoc
mixin _$Specialization {
  String get name => throw _privateConstructorUsedError;
  List<String> get subSpecialization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationCopyWith<Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationCopyWith<$Res> {
  factory $SpecializationCopyWith(
          Specialization value, $Res Function(Specialization) then) =
      _$SpecializationCopyWithImpl<$Res, Specialization>;
  @useResult
  $Res call({String name, List<String> subSpecialization});
}

/// @nodoc
class _$SpecializationCopyWithImpl<$Res, $Val extends Specialization>
    implements $SpecializationCopyWith<$Res> {
  _$SpecializationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? subSpecialization = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subSpecialization: null == subSpecialization
          ? _value.subSpecialization
          : subSpecialization // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpecializationCopyWith<$Res>
    implements $SpecializationCopyWith<$Res> {
  factory _$$_SpecializationCopyWith(
          _$_Specialization value, $Res Function(_$_Specialization) then) =
      __$$_SpecializationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> subSpecialization});
}

/// @nodoc
class __$$_SpecializationCopyWithImpl<$Res>
    extends _$SpecializationCopyWithImpl<$Res, _$_Specialization>
    implements _$$_SpecializationCopyWith<$Res> {
  __$$_SpecializationCopyWithImpl(
      _$_Specialization _value, $Res Function(_$_Specialization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? subSpecialization = null,
  }) {
    return _then(_$_Specialization(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subSpecialization: null == subSpecialization
          ? _value._subSpecialization
          : subSpecialization // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Specialization
    with DiagnosticableTreeMixin
    implements _Specialization {
  const _$_Specialization(
      {required this.name, required final List<String> subSpecialization})
      : _subSpecialization = subSpecialization;

  factory _$_Specialization.fromJson(Map<String, dynamic> json) =>
      _$$_SpecializationFromJson(json);

  @override
  final String name;
  final List<String> _subSpecialization;
  @override
  List<String> get subSpecialization {
    if (_subSpecialization is EqualUnmodifiableListView)
      return _subSpecialization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subSpecialization);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Specialization(name: $name, subSpecialization: $subSpecialization)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Specialization'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('subSpecialization', subSpecialization));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Specialization &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subSpecialization, _subSpecialization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_subSpecialization));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpecializationCopyWith<_$_Specialization> get copyWith =>
      __$$_SpecializationCopyWithImpl<_$_Specialization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecializationToJson(
      this,
    );
  }
}

abstract class _Specialization implements Specialization {
  const factory _Specialization(
      {required final String name,
      required final List<String> subSpecialization}) = _$_Specialization;

  factory _Specialization.fromJson(Map<String, dynamic> json) =
      _$_Specialization.fromJson;

  @override
  String get name;
  @override
  List<String> get subSpecialization;
  @override
  @JsonKey(ignore: true)
  _$$_SpecializationCopyWith<_$_Specialization> get copyWith =>
      throw _privateConstructorUsedError;
}
