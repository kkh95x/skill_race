// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CeritificateInfo _$CeritificateInfoFromJson(Map<String, dynamic> json) {
  return _CeritificateInfo.fromJson(json);
}

/// @nodoc
mixin _$CeritificateInfo {
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get certificateFrom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeritificateInfoCopyWith<CeritificateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeritificateInfoCopyWith<$Res> {
  factory $CeritificateInfoCopyWith(
          CeritificateInfo value, $Res Function(CeritificateInfo) then) =
      _$CeritificateInfoCopyWithImpl<$Res, CeritificateInfo>;
  @useResult
  $Res call(
      {String name,
      DateTime createdAt,
      DateTime? startDate,
      DateTime? endDate,
      String? certificateFrom});
}

/// @nodoc
class _$CeritificateInfoCopyWithImpl<$Res, $Val extends CeritificateInfo>
    implements $CeritificateInfoCopyWith<$Res> {
  _$CeritificateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createdAt = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? certificateFrom = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      certificateFrom: freezed == certificateFrom
          ? _value.certificateFrom
          : certificateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CeritificateInfoCopyWith<$Res>
    implements $CeritificateInfoCopyWith<$Res> {
  factory _$$_CeritificateInfoCopyWith(
          _$_CeritificateInfo value, $Res Function(_$_CeritificateInfo) then) =
      __$$_CeritificateInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime createdAt,
      DateTime? startDate,
      DateTime? endDate,
      String? certificateFrom});
}

/// @nodoc
class __$$_CeritificateInfoCopyWithImpl<$Res>
    extends _$CeritificateInfoCopyWithImpl<$Res, _$_CeritificateInfo>
    implements _$$_CeritificateInfoCopyWith<$Res> {
  __$$_CeritificateInfoCopyWithImpl(
      _$_CeritificateInfo _value, $Res Function(_$_CeritificateInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createdAt = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? certificateFrom = freezed,
  }) {
    return _then(_$_CeritificateInfo(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      certificateFrom: freezed == certificateFrom
          ? _value.certificateFrom
          : certificateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CeritificateInfo
    with DiagnosticableTreeMixin
    implements _CeritificateInfo {
  const _$_CeritificateInfo(
      {required this.name,
      required this.createdAt,
      this.startDate,
      this.endDate,
      this.certificateFrom});

  factory _$_CeritificateInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CeritificateInfoFromJson(json);

  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? certificateFrom;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CeritificateInfo(name: $name, createdAt: $createdAt, startDate: $startDate, endDate: $endDate, certificateFrom: $certificateFrom)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CeritificateInfo'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('certificateFrom', certificateFrom));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CeritificateInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.certificateFrom, certificateFrom) ||
                other.certificateFrom == certificateFrom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, createdAt, startDate, endDate, certificateFrom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CeritificateInfoCopyWith<_$_CeritificateInfo> get copyWith =>
      __$$_CeritificateInfoCopyWithImpl<_$_CeritificateInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CeritificateInfoToJson(
      this,
    );
  }
}

abstract class _CeritificateInfo implements CeritificateInfo {
  const factory _CeritificateInfo(
      {required final String name,
      required final DateTime createdAt,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? certificateFrom}) = _$_CeritificateInfo;

  factory _CeritificateInfo.fromJson(Map<String, dynamic> json) =
      _$_CeritificateInfo.fromJson;

  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get certificateFrom;
  @override
  @JsonKey(ignore: true)
  _$$_CeritificateInfoCopyWith<_$_CeritificateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
