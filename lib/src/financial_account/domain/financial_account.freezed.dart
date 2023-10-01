// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinancialAccount _$FinancialAccountFromJson(Map<String, dynamic> json) {
  return _FinancialAccount.fromJson(json);
}

/// @nodoc
mixin _$FinancialAccount {
  String? get id => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get income => throw _privateConstructorUsedError;
  double get outcome => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancialAccountCopyWith<FinancialAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialAccountCopyWith<$Res> {
  factory $FinancialAccountCopyWith(
          FinancialAccount value, $Res Function(FinancialAccount) then) =
      _$FinancialAccountCopyWithImpl<$Res, FinancialAccount>;
  @useResult
  $Res call(
      {String? id,
      double balance,
      double income,
      double outcome,
      String referenceId});
}

/// @nodoc
class _$FinancialAccountCopyWithImpl<$Res, $Val extends FinancialAccount>
    implements $FinancialAccountCopyWith<$Res> {
  _$FinancialAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? balance = null,
    Object? income = null,
    Object? outcome = null,
    Object? referenceId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      outcome: null == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as double,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FinancialAccountCopyWith<$Res>
    implements $FinancialAccountCopyWith<$Res> {
  factory _$$_FinancialAccountCopyWith(
          _$_FinancialAccount value, $Res Function(_$_FinancialAccount) then) =
      __$$_FinancialAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      double balance,
      double income,
      double outcome,
      String referenceId});
}

/// @nodoc
class __$$_FinancialAccountCopyWithImpl<$Res>
    extends _$FinancialAccountCopyWithImpl<$Res, _$_FinancialAccount>
    implements _$$_FinancialAccountCopyWith<$Res> {
  __$$_FinancialAccountCopyWithImpl(
      _$_FinancialAccount _value, $Res Function(_$_FinancialAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? balance = null,
    Object? income = null,
    Object? outcome = null,
    Object? referenceId = null,
  }) {
    return _then(_$_FinancialAccount(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
      outcome: null == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as double,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinancialAccount
    with DiagnosticableTreeMixin
    implements _FinancialAccount {
  const _$_FinancialAccount(
      {this.id,
      required this.balance,
      required this.income,
      required this.outcome,
      required this.referenceId});

  factory _$_FinancialAccount.fromJson(Map<String, dynamic> json) =>
      _$$_FinancialAccountFromJson(json);

  @override
  final String? id;
  @override
  final double balance;
  @override
  final double income;
  @override
  final double outcome;
  @override
  final String referenceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FinancialAccount(id: $id, balance: $balance, income: $income, outcome: $outcome, referenceId: $referenceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FinancialAccount'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('income', income))
      ..add(DiagnosticsProperty('outcome', outcome))
      ..add(DiagnosticsProperty('referenceId', referenceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinancialAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, balance, income, outcome, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinancialAccountCopyWith<_$_FinancialAccount> get copyWith =>
      __$$_FinancialAccountCopyWithImpl<_$_FinancialAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinancialAccountToJson(
      this,
    );
  }
}

abstract class _FinancialAccount implements FinancialAccount {
  const factory _FinancialAccount(
      {final String? id,
      required final double balance,
      required final double income,
      required final double outcome,
      required final String referenceId}) = _$_FinancialAccount;

  factory _FinancialAccount.fromJson(Map<String, dynamic> json) =
      _$_FinancialAccount.fromJson;

  @override
  String? get id;
  @override
  double get balance;
  @override
  double get income;
  @override
  double get outcome;
  @override
  String get referenceId;
  @override
  @JsonKey(ignore: true)
  _$$_FinancialAccountCopyWith<_$_FinancialAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
