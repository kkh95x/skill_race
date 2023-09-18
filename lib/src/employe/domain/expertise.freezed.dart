// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expertise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expertise _$ExpertiseFromJson(Map<String, dynamic> json) {
  return _Expertise.fromJson(json);
}

/// @nodoc
mixin _$Expertise {
  String get workType => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertiseCopyWith<Expertise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertiseCopyWith<$Res> {
  factory $ExpertiseCopyWith(Expertise value, $Res Function(Expertise) then) =
      _$ExpertiseCopyWithImpl<$Res, Expertise>;
  @useResult
  $Res call(
      {String workType,
      DateTime createdAt,
      DateTime? startDate,
      DateTime? endDate,
      String? companyName});
}

/// @nodoc
class _$ExpertiseCopyWithImpl<$Res, $Val extends Expertise>
    implements $ExpertiseCopyWith<$Res> {
  _$ExpertiseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workType = null,
    Object? createdAt = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
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
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpertiseCopyWith<$Res> implements $ExpertiseCopyWith<$Res> {
  factory _$$_ExpertiseCopyWith(
          _$_Expertise value, $Res Function(_$_Expertise) then) =
      __$$_ExpertiseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workType,
      DateTime createdAt,
      DateTime? startDate,
      DateTime? endDate,
      String? companyName});
}

/// @nodoc
class __$$_ExpertiseCopyWithImpl<$Res>
    extends _$ExpertiseCopyWithImpl<$Res, _$_Expertise>
    implements _$$_ExpertiseCopyWith<$Res> {
  __$$_ExpertiseCopyWithImpl(
      _$_Expertise _value, $Res Function(_$_Expertise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workType = null,
    Object? createdAt = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_$_Expertise(
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
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
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Expertise implements _Expertise {
  const _$_Expertise(
      {required this.workType,
      required this.createdAt,
      this.startDate,
      this.endDate,
      this.companyName});

  factory _$_Expertise.fromJson(Map<String, dynamic> json) =>
      _$$_ExpertiseFromJson(json);

  @override
  final String workType;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? companyName;

  @override
  String toString() {
    return 'Expertise(workType: $workType, createdAt: $createdAt, startDate: $startDate, endDate: $endDate, companyName: $companyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Expertise &&
            (identical(other.workType, workType) ||
                other.workType == workType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, workType, createdAt, startDate, endDate, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpertiseCopyWith<_$_Expertise> get copyWith =>
      __$$_ExpertiseCopyWithImpl<_$_Expertise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpertiseToJson(
      this,
    );
  }
}

abstract class _Expertise implements Expertise {
  const factory _Expertise(
      {required final String workType,
      required final DateTime createdAt,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? companyName}) = _$_Expertise;

  factory _Expertise.fromJson(Map<String, dynamic> json) =
      _$_Expertise.fromJson;

  @override
  String get workType;
  @override
  DateTime get createdAt;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get companyName;
  @override
  @JsonKey(ignore: true)
  _$$_ExpertiseCopyWith<_$_Expertise> get copyWith =>
      throw _privateConstructorUsedError;
}
