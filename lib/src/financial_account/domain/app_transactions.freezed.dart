// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppTransaction _$AppTransactionFromJson(Map<String, dynamic> json) {
  return _AppTransaction.fromJson(json);
}

/// @nodoc
mixin _$AppTransaction {
  String? get id => throw _privateConstructorUsedError;
  String get fromAccountId => throw _privateConstructorUsedError;
  String get toAccountId => throw _privateConstructorUsedError;
  TypeTransaction? get type => throw _privateConstructorUsedError;
  String? get offerId => throw _privateConstructorUsedError;
  List<String> get searchContent => throw _privateConstructorUsedError;
  List<String> get partiesId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  OperationType get operationType => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppTransactionCopyWith<AppTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTransactionCopyWith<$Res> {
  factory $AppTransactionCopyWith(
          AppTransaction value, $Res Function(AppTransaction) then) =
      _$AppTransactionCopyWithImpl<$Res, AppTransaction>;
  @useResult
  $Res call(
      {String? id,
      String fromAccountId,
      String toAccountId,
      TypeTransaction? type,
      String? offerId,
      List<String> searchContent,
      List<String> partiesId,
      double amount,
      Status status,
      OperationType operationType,
      DateTime dateTime,
      String description});
}

/// @nodoc
class _$AppTransactionCopyWithImpl<$Res, $Val extends AppTransaction>
    implements $AppTransactionCopyWith<$Res> {
  _$AppTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromAccountId = null,
    Object? toAccountId = null,
    Object? type = freezed,
    Object? offerId = freezed,
    Object? searchContent = null,
    Object? partiesId = null,
    Object? amount = null,
    Object? status = null,
    Object? operationType = null,
    Object? dateTime = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromAccountId: null == fromAccountId
          ? _value.fromAccountId
          : fromAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      toAccountId: null == toAccountId
          ? _value.toAccountId
          : toAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeTransaction?,
      offerId: freezed == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String?,
      searchContent: null == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partiesId: null == partiesId
          ? _value.partiesId
          : partiesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppTransactionCopyWith<$Res>
    implements $AppTransactionCopyWith<$Res> {
  factory _$$_AppTransactionCopyWith(
          _$_AppTransaction value, $Res Function(_$_AppTransaction) then) =
      __$$_AppTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String fromAccountId,
      String toAccountId,
      TypeTransaction? type,
      String? offerId,
      List<String> searchContent,
      List<String> partiesId,
      double amount,
      Status status,
      OperationType operationType,
      DateTime dateTime,
      String description});
}

/// @nodoc
class __$$_AppTransactionCopyWithImpl<$Res>
    extends _$AppTransactionCopyWithImpl<$Res, _$_AppTransaction>
    implements _$$_AppTransactionCopyWith<$Res> {
  __$$_AppTransactionCopyWithImpl(
      _$_AppTransaction _value, $Res Function(_$_AppTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromAccountId = null,
    Object? toAccountId = null,
    Object? type = freezed,
    Object? offerId = freezed,
    Object? searchContent = null,
    Object? partiesId = null,
    Object? amount = null,
    Object? status = null,
    Object? operationType = null,
    Object? dateTime = null,
    Object? description = null,
  }) {
    return _then(_$_AppTransaction(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromAccountId: null == fromAccountId
          ? _value.fromAccountId
          : fromAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      toAccountId: null == toAccountId
          ? _value.toAccountId
          : toAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeTransaction?,
      offerId: freezed == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String?,
      searchContent: null == searchContent
          ? _value._searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as List<String>,
      partiesId: null == partiesId
          ? _value._partiesId
          : partiesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppTransaction implements _AppTransaction {
  _$_AppTransaction(
      {this.id,
      required this.fromAccountId,
      required this.toAccountId,
      this.type,
      this.offerId,
      required final List<String> searchContent,
      required final List<String> partiesId,
      required this.amount,
      required this.status,
      required this.operationType,
      required this.dateTime,
      required this.description})
      : _searchContent = searchContent,
        _partiesId = partiesId;

  factory _$_AppTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_AppTransactionFromJson(json);

  @override
  final String? id;
  @override
  final String fromAccountId;
  @override
  final String toAccountId;
  @override
  final TypeTransaction? type;
  @override
  final String? offerId;
  final List<String> _searchContent;
  @override
  List<String> get searchContent {
    if (_searchContent is EqualUnmodifiableListView) return _searchContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchContent);
  }

  final List<String> _partiesId;
  @override
  List<String> get partiesId {
    if (_partiesId is EqualUnmodifiableListView) return _partiesId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partiesId);
  }

  @override
  final double amount;
  @override
  final Status status;
  @override
  final OperationType operationType;
  @override
  final DateTime dateTime;
  @override
  final String description;

  @override
  String toString() {
    return 'AppTransaction(id: $id, fromAccountId: $fromAccountId, toAccountId: $toAccountId, type: $type, offerId: $offerId, searchContent: $searchContent, partiesId: $partiesId, amount: $amount, status: $status, operationType: $operationType, dateTime: $dateTime, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTransaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromAccountId, fromAccountId) ||
                other.fromAccountId == fromAccountId) &&
            (identical(other.toAccountId, toAccountId) ||
                other.toAccountId == toAccountId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            const DeepCollectionEquality()
                .equals(other._searchContent, _searchContent) &&
            const DeepCollectionEquality()
                .equals(other._partiesId, _partiesId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fromAccountId,
      toAccountId,
      type,
      offerId,
      const DeepCollectionEquality().hash(_searchContent),
      const DeepCollectionEquality().hash(_partiesId),
      amount,
      status,
      operationType,
      dateTime,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppTransactionCopyWith<_$_AppTransaction> get copyWith =>
      __$$_AppTransactionCopyWithImpl<_$_AppTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppTransactionToJson(
      this,
    );
  }
}

abstract class _AppTransaction implements AppTransaction {
  factory _AppTransaction(
      {final String? id,
      required final String fromAccountId,
      required final String toAccountId,
      final TypeTransaction? type,
      final String? offerId,
      required final List<String> searchContent,
      required final List<String> partiesId,
      required final double amount,
      required final Status status,
      required final OperationType operationType,
      required final DateTime dateTime,
      required final String description}) = _$_AppTransaction;

  factory _AppTransaction.fromJson(Map<String, dynamic> json) =
      _$_AppTransaction.fromJson;

  @override
  String? get id;
  @override
  String get fromAccountId;
  @override
  String get toAccountId;
  @override
  TypeTransaction? get type;
  @override
  String? get offerId;
  @override
  List<String> get searchContent;
  @override
  List<String> get partiesId;
  @override
  double get amount;
  @override
  Status get status;
  @override
  OperationType get operationType;
  @override
  DateTime get dateTime;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_AppTransactionCopyWith<_$_AppTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
