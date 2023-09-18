// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edacation_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EdaucationInfo _$EdaucationInfoFromJson(Map<String, dynamic> json) {
  return _EdaucationInfo.fromJson(json);
}

/// @nodoc
mixin _$EdaucationInfo {
  String? get schoole => throw _privateConstructorUsedError;
  String? get faculty => throw _privateConstructorUsedError;
  String? get university => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdaucationInfoCopyWith<EdaucationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdaucationInfoCopyWith<$Res> {
  factory $EdaucationInfoCopyWith(
          EdaucationInfo value, $Res Function(EdaucationInfo) then) =
      _$EdaucationInfoCopyWithImpl<$Res, EdaucationInfo>;
  @useResult
  $Res call(
      {String? schoole,
      String? faculty,
      String? university,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class _$EdaucationInfoCopyWithImpl<$Res, $Val extends EdaucationInfo>
    implements $EdaucationInfoCopyWith<$Res> {
  _$EdaucationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoole = freezed,
    Object? faculty = freezed,
    Object? university = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      schoole: freezed == schoole
          ? _value.schoole
          : schoole // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EdaucationInfoCopyWith<$Res>
    implements $EdaucationInfoCopyWith<$Res> {
  factory _$$_EdaucationInfoCopyWith(
          _$_EdaucationInfo value, $Res Function(_$_EdaucationInfo) then) =
      __$$_EdaucationInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? schoole,
      String? faculty,
      String? university,
      DateTime? startDate,
      DateTime? endDate});
}

/// @nodoc
class __$$_EdaucationInfoCopyWithImpl<$Res>
    extends _$EdaucationInfoCopyWithImpl<$Res, _$_EdaucationInfo>
    implements _$$_EdaucationInfoCopyWith<$Res> {
  __$$_EdaucationInfoCopyWithImpl(
      _$_EdaucationInfo _value, $Res Function(_$_EdaucationInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoole = freezed,
    Object? faculty = freezed,
    Object? university = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_EdaucationInfo(
      schoole: freezed == schoole
          ? _value.schoole
          : schoole // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EdaucationInfo implements _EdaucationInfo {
  const _$_EdaucationInfo(
      {this.schoole,
      this.faculty,
      this.university,
      this.startDate,
      this.endDate});

  factory _$_EdaucationInfo.fromJson(Map<String, dynamic> json) =>
      _$$_EdaucationInfoFromJson(json);

  @override
  final String? schoole;
  @override
  final String? faculty;
  @override
  final String? university;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'EdaucationInfo(schoole: $schoole, faculty: $faculty, university: $university, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EdaucationInfo &&
            (identical(other.schoole, schoole) || other.schoole == schoole) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, schoole, faculty, university, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EdaucationInfoCopyWith<_$_EdaucationInfo> get copyWith =>
      __$$_EdaucationInfoCopyWithImpl<_$_EdaucationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EdaucationInfoToJson(
      this,
    );
  }
}

abstract class _EdaucationInfo implements EdaucationInfo {
  const factory _EdaucationInfo(
      {final String? schoole,
      final String? faculty,
      final String? university,
      final DateTime? startDate,
      final DateTime? endDate}) = _$_EdaucationInfo;

  factory _EdaucationInfo.fromJson(Map<String, dynamic> json) =
      _$_EdaucationInfo.fromJson;

  @override
  String? get schoole;
  @override
  String? get faculty;
  @override
  String? get university;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_EdaucationInfoCopyWith<_$_EdaucationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
