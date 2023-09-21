// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_review_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMyReviewProvider {
  String get myId => throw _privateConstructorUsedError;
  String get currentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMyReviewProviderCopyWith<GetMyReviewProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMyReviewProviderCopyWith<$Res> {
  factory $GetMyReviewProviderCopyWith(
          GetMyReviewProvider value, $Res Function(GetMyReviewProvider) then) =
      _$GetMyReviewProviderCopyWithImpl<$Res, GetMyReviewProvider>;
  @useResult
  $Res call({String myId, String currentId});
}

/// @nodoc
class _$GetMyReviewProviderCopyWithImpl<$Res, $Val extends GetMyReviewProvider>
    implements $GetMyReviewProviderCopyWith<$Res> {
  _$GetMyReviewProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myId = null,
    Object? currentId = null,
  }) {
    return _then(_value.copyWith(
      myId: null == myId
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
      currentId: null == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMyReviewProviderCopyWith<$Res>
    implements $GetMyReviewProviderCopyWith<$Res> {
  factory _$$_GetMyReviewProviderCopyWith(_$_GetMyReviewProvider value,
          $Res Function(_$_GetMyReviewProvider) then) =
      __$$_GetMyReviewProviderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String myId, String currentId});
}

/// @nodoc
class __$$_GetMyReviewProviderCopyWithImpl<$Res>
    extends _$GetMyReviewProviderCopyWithImpl<$Res, _$_GetMyReviewProvider>
    implements _$$_GetMyReviewProviderCopyWith<$Res> {
  __$$_GetMyReviewProviderCopyWithImpl(_$_GetMyReviewProvider _value,
      $Res Function(_$_GetMyReviewProvider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myId = null,
    Object? currentId = null,
  }) {
    return _then(_$_GetMyReviewProvider(
      myId: null == myId
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String,
      currentId: null == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMyReviewProvider implements _GetMyReviewProvider {
  _$_GetMyReviewProvider({required this.myId, required this.currentId});

  @override
  final String myId;
  @override
  final String currentId;

  @override
  String toString() {
    return 'GetMyReviewProvider(myId: $myId, currentId: $currentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyReviewProvider &&
            (identical(other.myId, myId) || other.myId == myId) &&
            (identical(other.currentId, currentId) ||
                other.currentId == currentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myId, currentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMyReviewProviderCopyWith<_$_GetMyReviewProvider> get copyWith =>
      __$$_GetMyReviewProviderCopyWithImpl<_$_GetMyReviewProvider>(
          this, _$identity);
}

abstract class _GetMyReviewProvider implements GetMyReviewProvider {
  factory _GetMyReviewProvider(
      {required final String myId,
      required final String currentId}) = _$_GetMyReviewProvider;

  @override
  String get myId;
  @override
  String get currentId;
  @override
  @JsonKey(ignore: true)
  _$$_GetMyReviewProviderCopyWith<_$_GetMyReviewProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
