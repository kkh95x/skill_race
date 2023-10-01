// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessagesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStateCopyWith<T, $Res> {
  factory $MessagesStateCopyWith(
          MessagesState<T> value, $Res Function(MessagesState<T>) then) =
      _$MessagesStateCopyWithImpl<T, $Res, MessagesState<T>>;
}

/// @nodoc
class _$MessagesStateCopyWithImpl<T, $Res, $Val extends MessagesState<T>>
    implements $MessagesStateCopyWith<T, $Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataCopyWith<T, $Res> {
  factory _$$_DataCopyWith(_$_Data<T> value, $Res Function(_$_Data<T>) then) =
      __$$_DataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> recipes});
}

/// @nodoc
class __$$_DataCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_Data<T>>
    implements _$$_DataCopyWith<T, $Res> {
  __$$_DataCopyWithImpl(_$_Data<T> _value, $Res Function(_$_Data<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_Data<T>(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_Data<T> implements _Data<T> {
  const _$_Data(final List<T> recipes) : _recipes = recipes;

  final List<T> _recipes;
  @override
  List<T> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'MessagesState<$T>.data(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data<T> &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<T, _$_Data<T>> get copyWith =>
      __$$_DataCopyWithImpl<T, _$_Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return data(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return data?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<T> implements MessagesState<T> {
  const factory _Data(final List<T> recipes) = _$_Data<T>;

  List<T> get recipes;
  @JsonKey(ignore: true)
  _$$_DataCopyWith<T, _$_Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitingSendNewMessageCopyWith<T, $Res> {
  factory _$$_WaitingSendNewMessageCopyWith(_$_WaitingSendNewMessage<T> value,
          $Res Function(_$_WaitingSendNewMessage<T>) then) =
      __$$_WaitingSendNewMessageCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> recipes, T newMessage});
}

/// @nodoc
class __$$_WaitingSendNewMessageCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_WaitingSendNewMessage<T>>
    implements _$$_WaitingSendNewMessageCopyWith<T, $Res> {
  __$$_WaitingSendNewMessageCopyWithImpl(_$_WaitingSendNewMessage<T> _value,
      $Res Function(_$_WaitingSendNewMessage<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? newMessage = freezed,
  }) {
    return _then(_$_WaitingSendNewMessage<T>(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<T>,
      freezed == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_WaitingSendNewMessage<T> implements _WaitingSendNewMessage<T> {
  const _$_WaitingSendNewMessage(final List<T> recipes, this.newMessage)
      : _recipes = recipes;

  final List<T> _recipes;
  @override
  List<T> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final T newMessage;

  @override
  String toString() {
    return 'MessagesState<$T>.waitingSendNewMessage(recipes: $recipes, newMessage: $newMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WaitingSendNewMessage<T> &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other.newMessage, newMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(newMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaitingSendNewMessageCopyWith<T, _$_WaitingSendNewMessage<T>>
      get copyWith => __$$_WaitingSendNewMessageCopyWithImpl<T,
          _$_WaitingSendNewMessage<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return waitingSendNewMessage(recipes, newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return waitingSendNewMessage?.call(recipes, newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (waitingSendNewMessage != null) {
      return waitingSendNewMessage(recipes, newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return waitingSendNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return waitingSendNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (waitingSendNewMessage != null) {
      return waitingSendNewMessage(this);
    }
    return orElse();
  }
}

abstract class _WaitingSendNewMessage<T> implements MessagesState<T> {
  const factory _WaitingSendNewMessage(
      final List<T> recipes, final T newMessage) = _$_WaitingSendNewMessage<T>;

  List<T> get recipes;
  T get newMessage;
  @JsonKey(ignore: true)
  _$$_WaitingSendNewMessageCopyWith<T, _$_WaitingSendNewMessage<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSendErrorCopyWith<T, $Res> {
  factory _$$_OnSendErrorCopyWith(
          _$_OnSendError<T> value, $Res Function(_$_OnSendError<T>) then) =
      __$$_OnSendErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> recipes, T newMessage});
}

/// @nodoc
class __$$_OnSendErrorCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_OnSendError<T>>
    implements _$$_OnSendErrorCopyWith<T, $Res> {
  __$$_OnSendErrorCopyWithImpl(
      _$_OnSendError<T> _value, $Res Function(_$_OnSendError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? newMessage = freezed,
  }) {
    return _then(_$_OnSendError<T>(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<T>,
      freezed == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_OnSendError<T> implements _OnSendError<T> {
  const _$_OnSendError(final List<T> recipes, this.newMessage)
      : _recipes = recipes;

  final List<T> _recipes;
  @override
  List<T> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final T newMessage;

  @override
  String toString() {
    return 'MessagesState<$T>.onSendError(recipes: $recipes, newMessage: $newMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSendError<T> &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other.newMessage, newMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(newMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSendErrorCopyWith<T, _$_OnSendError<T>> get copyWith =>
      __$$_OnSendErrorCopyWithImpl<T, _$_OnSendError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return onSendError(recipes, newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return onSendError?.call(recipes, newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (onSendError != null) {
      return onSendError(recipes, newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return onSendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return onSendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (onSendError != null) {
      return onSendError(this);
    }
    return orElse();
  }
}

abstract class _OnSendError<T> implements MessagesState<T> {
  const factory _OnSendError(final List<T> recipes, final T newMessage) =
      _$_OnSendError<T>;

  List<T> get recipes;
  T get newMessage;
  @JsonKey(ignore: true)
  _$$_OnSendErrorCopyWith<T, _$_OnSendError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_Loading<T>>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'MessagesState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements MessagesState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T> value, $Res Function(_$_Error<T>) then) =
      __$$_ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object? e, StackTrace? stk});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_Error<T>>
    implements _$$_ErrorCopyWith<T, $Res> {
  __$$_ErrorCopyWithImpl(_$_Error<T> _value, $Res Function(_$_Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
    Object? stk = freezed,
  }) {
    return _then(_$_Error<T>(
      freezed == e ? _value.e : e,
      freezed == stk
          ? _value.stk
          : stk // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.e, [this.stk]);

  @override
  final Object? e;
  @override
  final StackTrace? stk;

  @override
  String toString() {
    return 'MessagesState<$T>.error(e: $e, stk: $stk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error<T> &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.stk, stk) || other.stk == stk));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e), stk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      __$$_ErrorCopyWithImpl<T, _$_Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return error(e, stk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return error?.call(e, stk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e, stk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements MessagesState<T> {
  const factory _Error(final Object? e, [final StackTrace? stk]) = _$_Error<T>;

  Object? get e;
  StackTrace? get stk;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGoingLoadingCopyWith<T, $Res> {
  factory _$$_OnGoingLoadingCopyWith(_$_OnGoingLoading<T> value,
          $Res Function(_$_OnGoingLoading<T>) then) =
      __$$_OnGoingLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> recipes});
}

/// @nodoc
class __$$_OnGoingLoadingCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_OnGoingLoading<T>>
    implements _$$_OnGoingLoadingCopyWith<T, $Res> {
  __$$_OnGoingLoadingCopyWithImpl(
      _$_OnGoingLoading<T> _value, $Res Function(_$_OnGoingLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_OnGoingLoading<T>(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_OnGoingLoading<T> implements _OnGoingLoading<T> {
  const _$_OnGoingLoading(final List<T> recipes) : _recipes = recipes;

  final List<T> _recipes;
  @override
  List<T> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'MessagesState<$T>.onGoingLoading(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGoingLoading<T> &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnGoingLoadingCopyWith<T, _$_OnGoingLoading<T>> get copyWith =>
      __$$_OnGoingLoadingCopyWithImpl<T, _$_OnGoingLoading<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return onGoingLoading(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return onGoingLoading?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingLoading != null) {
      return onGoingLoading(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return onGoingLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return onGoingLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingLoading != null) {
      return onGoingLoading(this);
    }
    return orElse();
  }
}

abstract class _OnGoingLoading<T> implements MessagesState<T> {
  const factory _OnGoingLoading(final List<T> recipes) = _$_OnGoingLoading<T>;

  List<T> get recipes;
  @JsonKey(ignore: true)
  _$$_OnGoingLoadingCopyWith<T, _$_OnGoingLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OngoingErrorCopyWith<T, $Res> {
  factory _$$_OngoingErrorCopyWith(
          _$_OngoingError<T> value, $Res Function(_$_OngoingError<T>) then) =
      __$$_OngoingErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> recipes, Object? e, StackTrace? stk});
}

/// @nodoc
class __$$_OngoingErrorCopyWithImpl<T, $Res>
    extends _$MessagesStateCopyWithImpl<T, $Res, _$_OngoingError<T>>
    implements _$$_OngoingErrorCopyWith<T, $Res> {
  __$$_OngoingErrorCopyWithImpl(
      _$_OngoingError<T> _value, $Res Function(_$_OngoingError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? e = freezed,
    Object? stk = freezed,
  }) {
    return _then(_$_OngoingError<T>(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<T>,
      freezed == e ? _value.e : e,
      freezed == stk
          ? _value.stk
          : stk // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_OngoingError<T> implements _OngoingError<T> {
  const _$_OngoingError(final List<T> recipes, this.e, [this.stk])
      : _recipes = recipes;

  final List<T> _recipes;
  @override
  List<T> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final Object? e;
  @override
  final StackTrace? stk;

  @override
  String toString() {
    return 'MessagesState<$T>.onGoingError(recipes: $recipes, e: $e, stk: $stk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OngoingError<T> &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.stk, stk) || other.stk == stk));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(e),
      stk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OngoingErrorCopyWith<T, _$_OngoingError<T>> get copyWith =>
      __$$_OngoingErrorCopyWithImpl<T, _$_OngoingError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> recipes) data,
    required TResult Function(List<T> recipes, T newMessage)
        waitingSendNewMessage,
    required TResult Function(List<T> recipes, T newMessage) onSendError,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> recipes) onGoingLoading,
    required TResult Function(List<T> recipes, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return onGoingError(recipes, e, stk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> recipes)? data,
    TResult? Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult? Function(List<T> recipes, T newMessage)? onSendError,
    TResult? Function()? loading,
    TResult? Function(Object? e, StackTrace? stk)? error,
    TResult? Function(List<T> recipes)? onGoingLoading,
    TResult? Function(List<T> recipes, Object? e, StackTrace? stk)?
        onGoingError,
  }) {
    return onGoingError?.call(recipes, e, stk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> recipes)? data,
    TResult Function(List<T> recipes, T newMessage)? waitingSendNewMessage,
    TResult Function(List<T> recipes, T newMessage)? onSendError,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> recipes)? onGoingLoading,
    TResult Function(List<T> recipes, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingError != null) {
      return onGoingError(recipes, e, stk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_WaitingSendNewMessage<T> value)
        waitingSendNewMessage,
    required TResult Function(_OnSendError<T> value) onSendError,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OngoingError<T> value) onGoingError,
  }) {
    return onGoingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult? Function(_OnSendError<T> value)? onSendError,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult? Function(_OngoingError<T> value)? onGoingError,
  }) {
    return onGoingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_WaitingSendNewMessage<T> value)? waitingSendNewMessage,
    TResult Function(_OnSendError<T> value)? onSendError,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OngoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingError != null) {
      return onGoingError(this);
    }
    return orElse();
  }
}

abstract class _OngoingError<T> implements MessagesState<T> {
  const factory _OngoingError(final List<T> recipes, final Object? e,
      [final StackTrace? stk]) = _$_OngoingError<T>;

  List<T> get recipes;
  Object? get e;
  StackTrace? get stk;
  @JsonKey(ignore: true)
  _$$_OngoingErrorCopyWith<T, _$_OngoingError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
