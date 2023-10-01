// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_archived_profider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsArchavedProviderInput {
  String get refrenceId => throw _privateConstructorUsedError;
  ArchivesType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsArchavedProviderInputCopyWith<IsArchavedProviderInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsArchavedProviderInputCopyWith<$Res> {
  factory $IsArchavedProviderInputCopyWith(IsArchavedProviderInput value,
          $Res Function(IsArchavedProviderInput) then) =
      _$IsArchavedProviderInputCopyWithImpl<$Res, IsArchavedProviderInput>;
  @useResult
  $Res call({String refrenceId, ArchivesType type});
}

/// @nodoc
class _$IsArchavedProviderInputCopyWithImpl<$Res,
        $Val extends IsArchavedProviderInput>
    implements $IsArchavedProviderInputCopyWith<$Res> {
  _$IsArchavedProviderInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refrenceId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      refrenceId: null == refrenceId
          ? _value.refrenceId
          : refrenceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArchivesType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsArchavedProviderInputCopyWith<$Res>
    implements $IsArchavedProviderInputCopyWith<$Res> {
  factory _$$_IsArchavedProviderInputCopyWith(_$_IsArchavedProviderInput value,
          $Res Function(_$_IsArchavedProviderInput) then) =
      __$$_IsArchavedProviderInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refrenceId, ArchivesType type});
}

/// @nodoc
class __$$_IsArchavedProviderInputCopyWithImpl<$Res>
    extends _$IsArchavedProviderInputCopyWithImpl<$Res,
        _$_IsArchavedProviderInput>
    implements _$$_IsArchavedProviderInputCopyWith<$Res> {
  __$$_IsArchavedProviderInputCopyWithImpl(_$_IsArchavedProviderInput _value,
      $Res Function(_$_IsArchavedProviderInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refrenceId = null,
    Object? type = null,
  }) {
    return _then(_$_IsArchavedProviderInput(
      refrenceId: null == refrenceId
          ? _value.refrenceId
          : refrenceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArchivesType,
    ));
  }
}

/// @nodoc

class _$_IsArchavedProviderInput implements _IsArchavedProviderInput {
  _$_IsArchavedProviderInput({required this.refrenceId, required this.type});

  @override
  final String refrenceId;
  @override
  final ArchivesType type;

  @override
  String toString() {
    return 'IsArchavedProviderInput(refrenceId: $refrenceId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsArchavedProviderInput &&
            (identical(other.refrenceId, refrenceId) ||
                other.refrenceId == refrenceId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refrenceId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsArchavedProviderInputCopyWith<_$_IsArchavedProviderInput>
      get copyWith =>
          __$$_IsArchavedProviderInputCopyWithImpl<_$_IsArchavedProviderInput>(
              this, _$identity);
}

abstract class _IsArchavedProviderInput implements IsArchavedProviderInput {
  factory _IsArchavedProviderInput(
      {required final String refrenceId,
      required final ArchivesType type}) = _$_IsArchavedProviderInput;

  @override
  String get refrenceId;
  @override
  ArchivesType get type;
  @override
  @JsonKey(ignore: true)
  _$$_IsArchavedProviderInputCopyWith<_$_IsArchavedProviderInput>
      get copyWith => throw _privateConstructorUsedError;
}
