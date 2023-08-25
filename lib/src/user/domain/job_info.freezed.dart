// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobInfo _$JobInfoFromJson(Map<String, dynamic> json) {
  return _JobInfo.fromJson(json);
}

/// @nodoc
mixin _$JobInfo {
  List<String>? get specialization => throw _privateConstructorUsedError; //تخصص
  List<String>? get skills => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  List<String>? get tools => throw _privateConstructorUsedError;
  JopType? get jopType => throw _privateConstructorUsedError;
  PriceInfo? get priceInfo => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobInfoCopyWith<JobInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobInfoCopyWith<$Res> {
  factory $JobInfoCopyWith(JobInfo value, $Res Function(JobInfo) then) =
      _$JobInfoCopyWithImpl<$Res, JobInfo>;
  @useResult
  $Res call(
      {List<String>? specialization,
      List<String>? skills,
      String? companyName,
      List<String>? tools,
      JopType? jopType,
      PriceInfo? priceInfo,
      int age});

  $PriceInfoCopyWith<$Res>? get priceInfo;
}

/// @nodoc
class _$JobInfoCopyWithImpl<$Res, $Val extends JobInfo>
    implements $JobInfoCopyWith<$Res> {
  _$JobInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialization = freezed,
    Object? skills = freezed,
    Object? companyName = freezed,
    Object? tools = freezed,
    Object? jopType = freezed,
    Object? priceInfo = freezed,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      jopType: freezed == jopType
          ? _value.jopType
          : jopType // ignore: cast_nullable_to_non_nullable
              as JopType?,
      priceInfo: freezed == priceInfo
          ? _value.priceInfo
          : priceInfo // ignore: cast_nullable_to_non_nullable
              as PriceInfo?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceInfoCopyWith<$Res>? get priceInfo {
    if (_value.priceInfo == null) {
      return null;
    }

    return $PriceInfoCopyWith<$Res>(_value.priceInfo!, (value) {
      return _then(_value.copyWith(priceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobInfoCopyWith<$Res> implements $JobInfoCopyWith<$Res> {
  factory _$$_JobInfoCopyWith(
          _$_JobInfo value, $Res Function(_$_JobInfo) then) =
      __$$_JobInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? specialization,
      List<String>? skills,
      String? companyName,
      List<String>? tools,
      JopType? jopType,
      PriceInfo? priceInfo,
      int age});

  @override
  $PriceInfoCopyWith<$Res>? get priceInfo;
}

/// @nodoc
class __$$_JobInfoCopyWithImpl<$Res>
    extends _$JobInfoCopyWithImpl<$Res, _$_JobInfo>
    implements _$$_JobInfoCopyWith<$Res> {
  __$$_JobInfoCopyWithImpl(_$_JobInfo _value, $Res Function(_$_JobInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialization = freezed,
    Object? skills = freezed,
    Object? companyName = freezed,
    Object? tools = freezed,
    Object? jopType = freezed,
    Object? priceInfo = freezed,
    Object? age = null,
  }) {
    return _then(_$_JobInfo(
      specialization: freezed == specialization
          ? _value._specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      jopType: freezed == jopType
          ? _value.jopType
          : jopType // ignore: cast_nullable_to_non_nullable
              as JopType?,
      priceInfo: freezed == priceInfo
          ? _value.priceInfo
          : priceInfo // ignore: cast_nullable_to_non_nullable
              as PriceInfo?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobInfo with DiagnosticableTreeMixin implements _JobInfo {
  const _$_JobInfo(
      {final List<String>? specialization,
      final List<String>? skills,
      this.companyName,
      final List<String>? tools,
      this.jopType,
      this.priceInfo,
      required this.age})
      : _specialization = specialization,
        _skills = skills,
        _tools = tools;

  factory _$_JobInfo.fromJson(Map<String, dynamic> json) =>
      _$$_JobInfoFromJson(json);

  final List<String>? _specialization;
  @override
  List<String>? get specialization {
    final value = _specialization;
    if (value == null) return null;
    if (_specialization is EqualUnmodifiableListView) return _specialization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//تخصص
  final List<String>? _skills;
//تخصص
  @override
  List<String>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? companyName;
  final List<String>? _tools;
  @override
  List<String>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final JopType? jopType;
  @override
  final PriceInfo? priceInfo;
  @override
  final int age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobInfo(specialization: $specialization, skills: $skills, companyName: $companyName, tools: $tools, jopType: $jopType, priceInfo: $priceInfo, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobInfo'))
      ..add(DiagnosticsProperty('specialization', specialization))
      ..add(DiagnosticsProperty('skills', skills))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('tools', tools))
      ..add(DiagnosticsProperty('jopType', jopType))
      ..add(DiagnosticsProperty('priceInfo', priceInfo))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobInfo &&
            const DeepCollectionEquality()
                .equals(other._specialization, _specialization) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.jopType, jopType) || other.jopType == jopType) &&
            (identical(other.priceInfo, priceInfo) ||
                other.priceInfo == priceInfo) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_specialization),
      const DeepCollectionEquality().hash(_skills),
      companyName,
      const DeepCollectionEquality().hash(_tools),
      jopType,
      priceInfo,
      age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobInfoCopyWith<_$_JobInfo> get copyWith =>
      __$$_JobInfoCopyWithImpl<_$_JobInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobInfoToJson(
      this,
    );
  }
}

abstract class _JobInfo implements JobInfo {
  const factory _JobInfo(
      {final List<String>? specialization,
      final List<String>? skills,
      final String? companyName,
      final List<String>? tools,
      final JopType? jopType,
      final PriceInfo? priceInfo,
      required final int age}) = _$_JobInfo;

  factory _JobInfo.fromJson(Map<String, dynamic> json) = _$_JobInfo.fromJson;

  @override
  List<String>? get specialization;
  @override //تخصص
  List<String>? get skills;
  @override
  String? get companyName;
  @override
  List<String>? get tools;
  @override
  JopType? get jopType;
  @override
  PriceInfo? get priceInfo;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_JobInfoCopyWith<_$_JobInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
