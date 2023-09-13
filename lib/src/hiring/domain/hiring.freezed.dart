// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hiring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hiring _$HiringFromJson(Map<String, dynamic> json) {
  return _Hiring.fromJson(json);
}

/// @nodoc
mixin _$Hiring {
  String? get companyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiringCopyWith<Hiring> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringCopyWith<$Res> {
  factory $HiringCopyWith(Hiring value, $Res Function(Hiring) then) =
      _$HiringCopyWithImpl<$Res, Hiring>;
  @useResult
  $Res call({String? companyName});
}

/// @nodoc
class _$HiringCopyWithImpl<$Res, $Val extends Hiring>
    implements $HiringCopyWith<$Res> {
  _$HiringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HiringCopyWith<$Res> implements $HiringCopyWith<$Res> {
  factory _$$_HiringCopyWith(_$_Hiring value, $Res Function(_$_Hiring) then) =
      __$$_HiringCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? companyName});
}

/// @nodoc
class __$$_HiringCopyWithImpl<$Res>
    extends _$HiringCopyWithImpl<$Res, _$_Hiring>
    implements _$$_HiringCopyWith<$Res> {
  __$$_HiringCopyWithImpl(_$_Hiring _value, $Res Function(_$_Hiring) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
  }) {
    return _then(_$_Hiring(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hiring with DiagnosticableTreeMixin implements _Hiring {
  const _$_Hiring({this.companyName});

  factory _$_Hiring.fromJson(Map<String, dynamic> json) =>
      _$$_HiringFromJson(json);

  @override
  final String? companyName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hiring(companyName: $companyName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Hiring'))
      ..add(DiagnosticsProperty('companyName', companyName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hiring &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HiringCopyWith<_$_Hiring> get copyWith =>
      __$$_HiringCopyWithImpl<_$_Hiring>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HiringToJson(
      this,
    );
  }
}

abstract class _Hiring implements Hiring {
  const factory _Hiring({final String? companyName}) = _$_Hiring;

  factory _Hiring.fromJson(Map<String, dynamic> json) = _$_Hiring.fromJson;

  @override
  String? get companyName;
  @override
  @JsonKey(ignore: true)
  _$$_HiringCopyWith<_$_Hiring> get copyWith =>
      throw _privateConstructorUsedError;
}
