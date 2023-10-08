// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'officer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Officer _$OfficerFromJson(Map<String, dynamic> json) {
  return _Officer.fromJson(json);
}

/// @nodoc
mixin _$Officer {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  DateTime? get deadLine => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  OfficerState get currentStatus => throw _privateConstructorUsedError;
  List<OfficerState>? get status => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String get hiringId => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficerCopyWith<Officer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficerCopyWith<$Res> {
  factory $OfficerCopyWith(Officer value, $Res Function(Officer) then) =
      _$OfficerCopyWithImpl<$Res, Officer>;
  @useResult
  $Res call(
      {String? id,
      String title,
      double price,
      DateTime? deadLine,
      String? description,
      OfficerState currentStatus,
      List<OfficerState>? status,
      String? link,
      String hiringId,
      DateTime createAt,
      DateTime updateAt,
      String employeeId});

  $OfficerStateCopyWith<$Res> get currentStatus;
}

/// @nodoc
class _$OfficerCopyWithImpl<$Res, $Val extends Officer>
    implements $OfficerCopyWith<$Res> {
  _$OfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? price = null,
    Object? deadLine = freezed,
    Object? description = freezed,
    Object? currentStatus = null,
    Object? status = freezed,
    Object? link = freezed,
    Object? hiringId = null,
    Object? createAt = null,
    Object? updateAt = null,
    Object? employeeId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      deadLine: freezed == deadLine
          ? _value.deadLine
          : deadLine // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStatus: null == currentStatus
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as OfficerState,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<OfficerState>?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      hiringId: null == hiringId
          ? _value.hiringId
          : hiringId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficerStateCopyWith<$Res> get currentStatus {
    return $OfficerStateCopyWith<$Res>(_value.currentStatus, (value) {
      return _then(_value.copyWith(currentStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OfficerCopyWith<$Res> implements $OfficerCopyWith<$Res> {
  factory _$$_OfficerCopyWith(
          _$_Officer value, $Res Function(_$_Officer) then) =
      __$$_OfficerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      double price,
      DateTime? deadLine,
      String? description,
      OfficerState currentStatus,
      List<OfficerState>? status,
      String? link,
      String hiringId,
      DateTime createAt,
      DateTime updateAt,
      String employeeId});

  @override
  $OfficerStateCopyWith<$Res> get currentStatus;
}

/// @nodoc
class __$$_OfficerCopyWithImpl<$Res>
    extends _$OfficerCopyWithImpl<$Res, _$_Officer>
    implements _$$_OfficerCopyWith<$Res> {
  __$$_OfficerCopyWithImpl(_$_Officer _value, $Res Function(_$_Officer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? price = null,
    Object? deadLine = freezed,
    Object? description = freezed,
    Object? currentStatus = null,
    Object? status = freezed,
    Object? link = freezed,
    Object? hiringId = null,
    Object? createAt = null,
    Object? updateAt = null,
    Object? employeeId = null,
  }) {
    return _then(_$_Officer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      deadLine: freezed == deadLine
          ? _value.deadLine
          : deadLine // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStatus: null == currentStatus
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as OfficerState,
      status: freezed == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<OfficerState>?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      hiringId: null == hiringId
          ? _value.hiringId
          : hiringId // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Officer implements _Officer {
  _$_Officer(
      {this.id,
      required this.title,
      required this.price,
      this.deadLine,
      this.description,
      required this.currentStatus,
      final List<OfficerState>? status,
      this.link,
      required this.hiringId,
      required this.createAt,
      required this.updateAt,
      required this.employeeId})
      : _status = status;

  factory _$_Officer.fromJson(Map<String, dynamic> json) =>
      _$$_OfficerFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final double price;
  @override
  final DateTime? deadLine;
  @override
  final String? description;
  @override
  final OfficerState currentStatus;
  final List<OfficerState>? _status;
  @override
  List<OfficerState>? get status {
    final value = _status;
    if (value == null) return null;
    if (_status is EqualUnmodifiableListView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? link;
  @override
  final String hiringId;
  @override
  final DateTime createAt;
  @override
  final DateTime updateAt;
  @override
  final String employeeId;

  @override
  String toString() {
    return 'Officer(id: $id, title: $title, price: $price, deadLine: $deadLine, description: $description, currentStatus: $currentStatus, status: $status, link: $link, hiringId: $hiringId, createAt: $createAt, updateAt: $updateAt, employeeId: $employeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Officer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.deadLine, deadLine) ||
                other.deadLine == deadLine) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.currentStatus, currentStatus) ||
                other.currentStatus == currentStatus) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.hiringId, hiringId) ||
                other.hiringId == hiringId) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      price,
      deadLine,
      description,
      currentStatus,
      const DeepCollectionEquality().hash(_status),
      link,
      hiringId,
      createAt,
      updateAt,
      employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficerCopyWith<_$_Officer> get copyWith =>
      __$$_OfficerCopyWithImpl<_$_Officer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficerToJson(
      this,
    );
  }
}

abstract class _Officer implements Officer {
  factory _Officer(
      {final String? id,
      required final String title,
      required final double price,
      final DateTime? deadLine,
      final String? description,
      required final OfficerState currentStatus,
      final List<OfficerState>? status,
      final String? link,
      required final String hiringId,
      required final DateTime createAt,
      required final DateTime updateAt,
      required final String employeeId}) = _$_Officer;

  factory _Officer.fromJson(Map<String, dynamic> json) = _$_Officer.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  double get price;
  @override
  DateTime? get deadLine;
  @override
  String? get description;
  @override
  OfficerState get currentStatus;
  @override
  List<OfficerState>? get status;
  @override
  String? get link;
  @override
  String get hiringId;
  @override
  DateTime get createAt;
  @override
  DateTime get updateAt;
  @override
  String get employeeId;
  @override
  @JsonKey(ignore: true)
  _$$_OfficerCopyWith<_$_Officer> get copyWith =>
      throw _privateConstructorUsedError;
}
