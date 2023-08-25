// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) {
  return _LocationInfo.fromJson(json);
}

/// @nodoc
mixin _$LocationInfo {
  String get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get office => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationInfoCopyWith<LocationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInfoCopyWith<$Res> {
  factory $LocationInfoCopyWith(
          LocationInfo value, $Res Function(LocationInfo) then) =
      _$LocationInfoCopyWithImpl<$Res, LocationInfo>;
  @useResult
  $Res call(
      {String country, String? city, String? street, String? office, int age});
}

/// @nodoc
class _$LocationInfoCopyWithImpl<$Res, $Val extends LocationInfo>
    implements $LocationInfoCopyWith<$Res> {
  _$LocationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = freezed,
    Object? street = freezed,
    Object? office = freezed,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      office: freezed == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationInfoCopyWith<$Res>
    implements $LocationInfoCopyWith<$Res> {
  factory _$$_LocationInfoCopyWith(
          _$_LocationInfo value, $Res Function(_$_LocationInfo) then) =
      __$$_LocationInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country, String? city, String? street, String? office, int age});
}

/// @nodoc
class __$$_LocationInfoCopyWithImpl<$Res>
    extends _$LocationInfoCopyWithImpl<$Res, _$_LocationInfo>
    implements _$$_LocationInfoCopyWith<$Res> {
  __$$_LocationInfoCopyWithImpl(
      _$_LocationInfo _value, $Res Function(_$_LocationInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = freezed,
    Object? street = freezed,
    Object? office = freezed,
    Object? age = null,
  }) {
    return _then(_$_LocationInfo(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      office: freezed == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationInfo implements _LocationInfo {
  const _$_LocationInfo(
      {required this.country,
      this.city,
      this.street,
      this.office,
      required this.age});

  factory _$_LocationInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LocationInfoFromJson(json);

  @override
  final String country;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? office;
  @override
  final int age;

  @override
  String toString() {
    return 'LocationInfo(country: $country, city: $city, street: $street, office: $office, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationInfo &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.office, office) || other.office == office) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, country, city, street, office, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationInfoCopyWith<_$_LocationInfo> get copyWith =>
      __$$_LocationInfoCopyWithImpl<_$_LocationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationInfoToJson(
      this,
    );
  }
}

abstract class _LocationInfo implements LocationInfo {
  const factory _LocationInfo(
      {required final String country,
      final String? city,
      final String? street,
      final String? office,
      required final int age}) = _$_LocationInfo;

  factory _LocationInfo.fromJson(Map<String, dynamic> json) =
      _$_LocationInfo.fromJson;

  @override
  String get country;
  @override
  String? get city;
  @override
  String? get street;
  @override
  String? get office;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_LocationInfoCopyWith<_$_LocationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
