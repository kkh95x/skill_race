// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  String? get specialization => throw _privateConstructorUsedError; //تخصص
  String? get supSpecialization => throw _privateConstructorUsedError;
  String? get jobType => throw _privateConstructorUsedError;
  List<CeritificateInfo>? get ceritificates =>
      throw _privateConstructorUsedError; //شهادات
  List<String>? get language => throw _privateConstructorUsedError;
  List<Expertise>? get expertises => throw _privateConstructorUsedError;
  List<String>? get skills => throw _privateConstructorUsedError;
  List<Education>? get educations => throw _privateConstructorUsedError;
  LookingForAJob? get lookingForAJob => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call(
      {String? specialization,
      String? supSpecialization,
      String? jobType,
      List<CeritificateInfo>? ceritificates,
      List<String>? language,
      List<Expertise>? expertises,
      List<String>? skills,
      List<Education>? educations,
      LookingForAJob? lookingForAJob});

  $LookingForAJobCopyWith<$Res>? get lookingForAJob;
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialization = freezed,
    Object? supSpecialization = freezed,
    Object? jobType = freezed,
    Object? ceritificates = freezed,
    Object? language = freezed,
    Object? expertises = freezed,
    Object? skills = freezed,
    Object? educations = freezed,
    Object? lookingForAJob = freezed,
  }) {
    return _then(_value.copyWith(
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String?,
      supSpecialization: freezed == supSpecialization
          ? _value.supSpecialization
          : supSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      ceritificates: freezed == ceritificates
          ? _value.ceritificates
          : ceritificates // ignore: cast_nullable_to_non_nullable
              as List<CeritificateInfo>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expertises: freezed == expertises
          ? _value.expertises
          : expertises // ignore: cast_nullable_to_non_nullable
              as List<Expertise>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      educations: freezed == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<Education>?,
      lookingForAJob: freezed == lookingForAJob
          ? _value.lookingForAJob
          : lookingForAJob // ignore: cast_nullable_to_non_nullable
              as LookingForAJob?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LookingForAJobCopyWith<$Res>? get lookingForAJob {
    if (_value.lookingForAJob == null) {
      return null;
    }

    return $LookingForAJobCopyWith<$Res>(_value.lookingForAJob!, (value) {
      return _then(_value.copyWith(lookingForAJob: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? specialization,
      String? supSpecialization,
      String? jobType,
      List<CeritificateInfo>? ceritificates,
      List<String>? language,
      List<Expertise>? expertises,
      List<String>? skills,
      List<Education>? educations,
      LookingForAJob? lookingForAJob});

  @override
  $LookingForAJobCopyWith<$Res>? get lookingForAJob;
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$_Employee>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialization = freezed,
    Object? supSpecialization = freezed,
    Object? jobType = freezed,
    Object? ceritificates = freezed,
    Object? language = freezed,
    Object? expertises = freezed,
    Object? skills = freezed,
    Object? educations = freezed,
    Object? lookingForAJob = freezed,
  }) {
    return _then(_$_Employee(
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String?,
      supSpecialization: freezed == supSpecialization
          ? _value.supSpecialization
          : supSpecialization // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      ceritificates: freezed == ceritificates
          ? _value._ceritificates
          : ceritificates // ignore: cast_nullable_to_non_nullable
              as List<CeritificateInfo>?,
      language: freezed == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expertises: freezed == expertises
          ? _value._expertises
          : expertises // ignore: cast_nullable_to_non_nullable
              as List<Expertise>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      educations: freezed == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<Education>?,
      lookingForAJob: freezed == lookingForAJob
          ? _value.lookingForAJob
          : lookingForAJob // ignore: cast_nullable_to_non_nullable
              as LookingForAJob?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Employee with DiagnosticableTreeMixin implements _Employee {
  const _$_Employee(
      {this.specialization,
      this.supSpecialization,
      this.jobType,
      final List<CeritificateInfo>? ceritificates,
      final List<String>? language,
      final List<Expertise>? expertises,
      final List<String>? skills,
      final List<Education>? educations,
      this.lookingForAJob})
      : _ceritificates = ceritificates,
        _language = language,
        _expertises = expertises,
        _skills = skills,
        _educations = educations;

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeFromJson(json);

  @override
  final String? specialization;
//تخصص
  @override
  final String? supSpecialization;
  @override
  final String? jobType;
  final List<CeritificateInfo>? _ceritificates;
  @override
  List<CeritificateInfo>? get ceritificates {
    final value = _ceritificates;
    if (value == null) return null;
    if (_ceritificates is EqualUnmodifiableListView) return _ceritificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//شهادات
  final List<String>? _language;
//شهادات
  @override
  List<String>? get language {
    final value = _language;
    if (value == null) return null;
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Expertise>? _expertises;
  @override
  List<Expertise>? get expertises {
    final value = _expertises;
    if (value == null) return null;
    if (_expertises is EqualUnmodifiableListView) return _expertises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _skills;
  @override
  List<String>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Education>? _educations;
  @override
  List<Education>? get educations {
    final value = _educations;
    if (value == null) return null;
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LookingForAJob? lookingForAJob;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Employee(specialization: $specialization, supSpecialization: $supSpecialization, jobType: $jobType, ceritificates: $ceritificates, language: $language, expertises: $expertises, skills: $skills, educations: $educations, lookingForAJob: $lookingForAJob)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Employee'))
      ..add(DiagnosticsProperty('specialization', specialization))
      ..add(DiagnosticsProperty('supSpecialization', supSpecialization))
      ..add(DiagnosticsProperty('jobType', jobType))
      ..add(DiagnosticsProperty('ceritificates', ceritificates))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('expertises', expertises))
      ..add(DiagnosticsProperty('skills', skills))
      ..add(DiagnosticsProperty('educations', educations))
      ..add(DiagnosticsProperty('lookingForAJob', lookingForAJob));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employee &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.supSpecialization, supSpecialization) ||
                other.supSpecialization == supSpecialization) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            const DeepCollectionEquality()
                .equals(other._ceritificates, _ceritificates) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality()
                .equals(other._expertises, _expertises) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            (identical(other.lookingForAJob, lookingForAJob) ||
                other.lookingForAJob == lookingForAJob));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      specialization,
      supSpecialization,
      jobType,
      const DeepCollectionEquality().hash(_ceritificates),
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_expertises),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_educations),
      lookingForAJob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {final String? specialization,
      final String? supSpecialization,
      final String? jobType,
      final List<CeritificateInfo>? ceritificates,
      final List<String>? language,
      final List<Expertise>? expertises,
      final List<String>? skills,
      final List<Education>? educations,
      final LookingForAJob? lookingForAJob}) = _$_Employee;

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

  @override
  String? get specialization;
  @override //تخصص
  String? get supSpecialization;
  @override
  String? get jobType;
  @override
  List<CeritificateInfo>? get ceritificates;
  @override //شهادات
  List<String>? get language;
  @override
  List<Expertise>? get expertises;
  @override
  List<String>? get skills;
  @override
  List<Education>? get educations;
  @override
  LookingForAJob? get lookingForAJob;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}
