// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String? get id => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get birthDay => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError; //اهتمامات
  String? get token => throw _privateConstructorUsedError;
  JobInfo? get jobInfo => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  List<EdaucationInfo>? get educations => throw _privateConstructorUsedError;
  String? get cvUrl => throw _privateConstructorUsedError;
  List<CeritificateInfo>? get ceritificates =>
      throw _privateConstructorUsedError; //شهادات
  List<String>? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String? id,
      bool isActive,
      bool isOnline,
      String? phone,
      String? email,
      DateTime? birthDay,
      String fullname,
      String? password,
      List<String>? interests,
      String? token,
      JobInfo? jobInfo,
      String? bio,
      String? imgUrl,
      List<EdaucationInfo>? educations,
      String? cvUrl,
      List<CeritificateInfo>? ceritificates,
      List<String>? language});

  $JobInfoCopyWith<$Res>? get jobInfo;
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = null,
    Object? isOnline = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? birthDay = freezed,
    Object? fullname = null,
    Object? password = freezed,
    Object? interests = freezed,
    Object? token = freezed,
    Object? jobInfo = freezed,
    Object? bio = freezed,
    Object? imgUrl = freezed,
    Object? educations = freezed,
    Object? cvUrl = freezed,
    Object? ceritificates = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      jobInfo: freezed == jobInfo
          ? _value.jobInfo
          : jobInfo // ignore: cast_nullable_to_non_nullable
              as JobInfo?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      educations: freezed == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EdaucationInfo>?,
      cvUrl: freezed == cvUrl
          ? _value.cvUrl
          : cvUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ceritificates: freezed == ceritificates
          ? _value.ceritificates
          : ceritificates // ignore: cast_nullable_to_non_nullable
              as List<CeritificateInfo>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobInfoCopyWith<$Res>? get jobInfo {
    if (_value.jobInfo == null) {
      return null;
    }

    return $JobInfoCopyWith<$Res>(_value.jobInfo!, (value) {
      return _then(_value.copyWith(jobInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool isActive,
      bool isOnline,
      String? phone,
      String? email,
      DateTime? birthDay,
      String fullname,
      String? password,
      List<String>? interests,
      String? token,
      JobInfo? jobInfo,
      String? bio,
      String? imgUrl,
      List<EdaucationInfo>? educations,
      String? cvUrl,
      List<CeritificateInfo>? ceritificates,
      List<String>? language});

  @override
  $JobInfoCopyWith<$Res>? get jobInfo;
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = null,
    Object? isOnline = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? birthDay = freezed,
    Object? fullname = null,
    Object? password = freezed,
    Object? interests = freezed,
    Object? token = freezed,
    Object? jobInfo = freezed,
    Object? bio = freezed,
    Object? imgUrl = freezed,
    Object? educations = freezed,
    Object? cvUrl = freezed,
    Object? ceritificates = freezed,
    Object? language = freezed,
  }) {
    return _then(_$_AppUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      jobInfo: freezed == jobInfo
          ? _value.jobInfo
          : jobInfo // ignore: cast_nullable_to_non_nullable
              as JobInfo?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      educations: freezed == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EdaucationInfo>?,
      cvUrl: freezed == cvUrl
          ? _value.cvUrl
          : cvUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ceritificates: freezed == ceritificates
          ? _value._ceritificates
          : ceritificates // ignore: cast_nullable_to_non_nullable
              as List<CeritificateInfo>?,
      language: freezed == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser with DiagnosticableTreeMixin implements _AppUser {
  const _$_AppUser(
      {this.id,
      this.isActive = true,
      this.isOnline = false,
      this.phone,
      this.email,
      this.birthDay,
      required this.fullname,
      this.password,
      final List<String>? interests,
      this.token,
      this.jobInfo,
      this.bio,
      this.imgUrl,
      final List<EdaucationInfo>? educations,
      this.cvUrl,
      final List<CeritificateInfo>? ceritificates,
      final List<String>? language})
      : _interests = interests,
        _educations = educations,
        _ceritificates = ceritificates,
        _language = language;

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isOnline;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final DateTime? birthDay;
  @override
  final String fullname;
  @override
  final String? password;
  final List<String>? _interests;
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//اهتمامات
  @override
  final String? token;
  @override
  final JobInfo? jobInfo;
  @override
  final String? bio;
  @override
  final String? imgUrl;
  final List<EdaucationInfo>? _educations;
  @override
  List<EdaucationInfo>? get educations {
    final value = _educations;
    if (value == null) return null;
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? cvUrl;
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUser(id: $id, isActive: $isActive, isOnline: $isOnline, phone: $phone, email: $email, birthDay: $birthDay, fullname: $fullname, password: $password, interests: $interests, token: $token, jobInfo: $jobInfo, bio: $bio, imgUrl: $imgUrl, educations: $educations, cvUrl: $cvUrl, ceritificates: $ceritificates, language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('isOnline', isOnline))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('birthDay', birthDay))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('interests', interests))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('jobInfo', jobInfo))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('imgUrl', imgUrl))
      ..add(DiagnosticsProperty('educations', educations))
      ..add(DiagnosticsProperty('cvUrl', cvUrl))
      ..add(DiagnosticsProperty('ceritificates', ceritificates))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.jobInfo, jobInfo) || other.jobInfo == jobInfo) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            (identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl) &&
            const DeepCollectionEquality()
                .equals(other._ceritificates, _ceritificates) &&
            const DeepCollectionEquality().equals(other._language, _language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      isOnline,
      phone,
      email,
      birthDay,
      fullname,
      password,
      const DeepCollectionEquality().hash(_interests),
      token,
      jobInfo,
      bio,
      imgUrl,
      const DeepCollectionEquality().hash(_educations),
      cvUrl,
      const DeepCollectionEquality().hash(_ceritificates),
      const DeepCollectionEquality().hash(_language));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {final String? id,
      final bool isActive,
      final bool isOnline,
      final String? phone,
      final String? email,
      final DateTime? birthDay,
      required final String fullname,
      final String? password,
      final List<String>? interests,
      final String? token,
      final JobInfo? jobInfo,
      final String? bio,
      final String? imgUrl,
      final List<EdaucationInfo>? educations,
      final String? cvUrl,
      final List<CeritificateInfo>? ceritificates,
      final List<String>? language}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String? get id;
  @override
  bool get isActive;
  @override
  bool get isOnline;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  DateTime? get birthDay;
  @override
  String get fullname;
  @override
  String? get password;
  @override
  List<String>? get interests;
  @override //اهتمامات
  String? get token;
  @override
  JobInfo? get jobInfo;
  @override
  String? get bio;
  @override
  String? get imgUrl;
  @override
  List<EdaucationInfo>? get educations;
  @override
  String? get cvUrl;
  @override
  List<CeritificateInfo>? get ceritificates;
  @override //شهادات
  List<String>? get language;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
