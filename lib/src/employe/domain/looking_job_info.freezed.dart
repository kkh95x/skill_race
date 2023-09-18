// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'looking_job_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LookingForAJob _$LookingForAJobFromJson(Map<String, dynamic> json) {
  return _LookingForAJob.fromJson(json);
}

/// @nodoc
mixin _$LookingForAJob {
  String? get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get showLookingJobProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LookingForAJobCopyWith<LookingForAJob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LookingForAJobCopyWith<$Res> {
  factory $LookingForAJobCopyWith(
          LookingForAJob value, $Res Function(LookingForAJob) then) =
      _$LookingForAJobCopyWithImpl<$Res, LookingForAJob>;
  @useResult
  $Res call(
      {String? id,
      String country,
      String city,
      double price,
      bool showLookingJobProfile});
}

/// @nodoc
class _$LookingForAJobCopyWithImpl<$Res, $Val extends LookingForAJob>
    implements $LookingForAJobCopyWith<$Res> {
  _$LookingForAJobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country = null,
    Object? city = null,
    Object? price = null,
    Object? showLookingJobProfile = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      showLookingJobProfile: null == showLookingJobProfile
          ? _value.showLookingJobProfile
          : showLookingJobProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LookingForAJobCopyWith<$Res>
    implements $LookingForAJobCopyWith<$Res> {
  factory _$$_LookingForAJobCopyWith(
          _$_LookingForAJob value, $Res Function(_$_LookingForAJob) then) =
      __$$_LookingForAJobCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String country,
      String city,
      double price,
      bool showLookingJobProfile});
}

/// @nodoc
class __$$_LookingForAJobCopyWithImpl<$Res>
    extends _$LookingForAJobCopyWithImpl<$Res, _$_LookingForAJob>
    implements _$$_LookingForAJobCopyWith<$Res> {
  __$$_LookingForAJobCopyWithImpl(
      _$_LookingForAJob _value, $Res Function(_$_LookingForAJob) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country = null,
    Object? city = null,
    Object? price = null,
    Object? showLookingJobProfile = null,
  }) {
    return _then(_$_LookingForAJob(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      showLookingJobProfile: null == showLookingJobProfile
          ? _value.showLookingJobProfile
          : showLookingJobProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LookingForAJob
    with DiagnosticableTreeMixin
    implements _LookingForAJob {
  const _$_LookingForAJob(
      {this.id,
      required this.country,
      required this.city,
      required this.price,
      required this.showLookingJobProfile});

  factory _$_LookingForAJob.fromJson(Map<String, dynamic> json) =>
      _$$_LookingForAJobFromJson(json);

  @override
  final String? id;
  @override
  final String country;
  @override
  final String city;
  @override
  final double price;
  @override
  final bool showLookingJobProfile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LookingForAJob(id: $id, country: $country, city: $city, price: $price, showLookingJobProfile: $showLookingJobProfile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LookingForAJob'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('price', price))
      ..add(
          DiagnosticsProperty('showLookingJobProfile', showLookingJobProfile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LookingForAJob &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.showLookingJobProfile, showLookingJobProfile) ||
                other.showLookingJobProfile == showLookingJobProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, country, city, price, showLookingJobProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LookingForAJobCopyWith<_$_LookingForAJob> get copyWith =>
      __$$_LookingForAJobCopyWithImpl<_$_LookingForAJob>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LookingForAJobToJson(
      this,
    );
  }
}

abstract class _LookingForAJob implements LookingForAJob {
  const factory _LookingForAJob(
      {final String? id,
      required final String country,
      required final String city,
      required final double price,
      required final bool showLookingJobProfile}) = _$_LookingForAJob;

  factory _LookingForAJob.fromJson(Map<String, dynamic> json) =
      _$_LookingForAJob.fromJson;

  @override
  String? get id;
  @override
  String get country;
  @override
  String get city;
  @override
  double get price;
  @override
  bool get showLookingJobProfile;
  @override
  @JsonKey(ignore: true)
  _$$_LookingForAJobCopyWith<_$_LookingForAJob> get copyWith =>
      throw _privateConstructorUsedError;
}
