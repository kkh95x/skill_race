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
  UserState get state => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  AccountType get accountType => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError; //اهتمامات
  String? get token => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;
  Hiring? get hiring => throw _privateConstructorUsedError;
  DateTime? get lastEdtiName => throw _privateConstructorUsedError;

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
      UserState state,
      String fullname,
      AccountType accountType,
      String? password,
      List<String>? interests,
      String? token,
      String? country,
      String? city,
      String? bio,
      String? imgUrl,
      Employee? employee,
      Hiring? hiring,
      DateTime? lastEdtiName});

  $EmployeeCopyWith<$Res>? get employee;
  $HiringCopyWith<$Res>? get hiring;
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
    Object? state = null,
    Object? fullname = null,
    Object? accountType = null,
    Object? password = freezed,
    Object? interests = freezed,
    Object? token = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? imgUrl = freezed,
    Object? employee = freezed,
    Object? hiring = freezed,
    Object? lastEdtiName = freezed,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserState,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      hiring: freezed == hiring
          ? _value.hiring
          : hiring // ignore: cast_nullable_to_non_nullable
              as Hiring?,
      lastEdtiName: freezed == lastEdtiName
          ? _value.lastEdtiName
          : lastEdtiName // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HiringCopyWith<$Res>? get hiring {
    if (_value.hiring == null) {
      return null;
    }

    return $HiringCopyWith<$Res>(_value.hiring!, (value) {
      return _then(_value.copyWith(hiring: value) as $Val);
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
      UserState state,
      String fullname,
      AccountType accountType,
      String? password,
      List<String>? interests,
      String? token,
      String? country,
      String? city,
      String? bio,
      String? imgUrl,
      Employee? employee,
      Hiring? hiring,
      DateTime? lastEdtiName});

  @override
  $EmployeeCopyWith<$Res>? get employee;
  @override
  $HiringCopyWith<$Res>? get hiring;
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
    Object? state = null,
    Object? fullname = null,
    Object? accountType = null,
    Object? password = freezed,
    Object? interests = freezed,
    Object? token = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? imgUrl = freezed,
    Object? employee = freezed,
    Object? hiring = freezed,
    Object? lastEdtiName = freezed,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserState,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      hiring: freezed == hiring
          ? _value.hiring
          : hiring // ignore: cast_nullable_to_non_nullable
              as Hiring?,
      lastEdtiName: freezed == lastEdtiName
          ? _value.lastEdtiName
          : lastEdtiName // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {this.id,
      this.isActive = true,
      this.isOnline = false,
      this.phone,
      this.email,
      this.birthDay,
      this.state = UserState.avalible,
      required this.fullname,
      required this.accountType,
      this.password,
      final List<String>? interests,
      this.token,
      this.country,
      this.city,
      this.bio,
      this.imgUrl,
      this.employee,
      this.hiring,
      this.lastEdtiName})
      : _interests = interests;

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
  @JsonKey()
  final UserState state;
  @override
  final String fullname;
  @override
  final AccountType accountType;
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
  final String? country;
  @override
  final String? city;
  @override
  final String? bio;
  @override
  final String? imgUrl;
  @override
  final Employee? employee;
  @override
  final Hiring? hiring;
  @override
  final DateTime? lastEdtiName;

  @override
  String toString() {
    return 'AppUser(id: $id, isActive: $isActive, isOnline: $isOnline, phone: $phone, email: $email, birthDay: $birthDay, state: $state, fullname: $fullname, accountType: $accountType, password: $password, interests: $interests, token: $token, country: $country, city: $city, bio: $bio, imgUrl: $imgUrl, employee: $employee, hiring: $hiring, lastEdtiName: $lastEdtiName)';
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
            (identical(other.state, state) || other.state == state) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.hiring, hiring) || other.hiring == hiring) &&
            (identical(other.lastEdtiName, lastEdtiName) ||
                other.lastEdtiName == lastEdtiName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        isActive,
        isOnline,
        phone,
        email,
        birthDay,
        state,
        fullname,
        accountType,
        password,
        const DeepCollectionEquality().hash(_interests),
        token,
        country,
        city,
        bio,
        imgUrl,
        employee,
        hiring,
        lastEdtiName
      ]);

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
      final UserState state,
      required final String fullname,
      required final AccountType accountType,
      final String? password,
      final List<String>? interests,
      final String? token,
      final String? country,
      final String? city,
      final String? bio,
      final String? imgUrl,
      final Employee? employee,
      final Hiring? hiring,
      final DateTime? lastEdtiName}) = _$_AppUser;

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
  UserState get state;
  @override
  String get fullname;
  @override
  AccountType get accountType;
  @override
  String? get password;
  @override
  List<String>? get interests;
  @override //اهتمامات
  String? get token;
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get bio;
  @override
  String? get imgUrl;
  @override
  Employee? get employee;
  @override
  Hiring? get hiring;
  @override
  DateTime? get lastEdtiName;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
