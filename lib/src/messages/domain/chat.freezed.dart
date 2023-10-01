// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  String? get id => throw _privateConstructorUsedError;
  ChatState get chatState => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<String> get usersId => throw _privateConstructorUsedError;
  List<String> get usersname => throw _privateConstructorUsedError;
  Message? get lastMessage => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {String? id,
      ChatState chatState,
      DateTime createdAt,
      List<String> usersId,
      List<String> usersname,
      Message? lastMessage,
      DateTime updatedAt});

  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatState = null,
    Object? createdAt = null,
    Object? usersId = null,
    Object? usersname = null,
    Object? lastMessage = freezed,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatState: null == chatState
          ? _value.chatState
          : chatState // ignore: cast_nullable_to_non_nullable
              as ChatState,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usersId: null == usersId
          ? _value.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usersname: null == usersname
          ? _value.usersname
          : usersname // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      ChatState chatState,
      DateTime createdAt,
      List<String> usersId,
      List<String> usersname,
      Message? lastMessage,
      DateTime updatedAt});

  @override
  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatState = null,
    Object? createdAt = null,
    Object? usersId = null,
    Object? usersname = null,
    Object? lastMessage = freezed,
    Object? updatedAt = null,
  }) {
    return _then(_$_Chat(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatState: null == chatState
          ? _value.chatState
          : chatState // ignore: cast_nullable_to_non_nullable
              as ChatState,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usersId: null == usersId
          ? _value._usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usersname: null == usersname
          ? _value._usersname
          : usersname // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {this.id,
      required this.chatState,
      required this.createdAt,
      required final List<String> usersId,
      required final List<String> usersname,
      required this.lastMessage,
      required this.updatedAt})
      : _usersId = usersId,
        _usersname = usersname;

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final String? id;
  @override
  final ChatState chatState;
  @override
  final DateTime createdAt;
  final List<String> _usersId;
  @override
  List<String> get usersId {
    if (_usersId is EqualUnmodifiableListView) return _usersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersId);
  }

  final List<String> _usersname;
  @override
  List<String> get usersname {
    if (_usersname is EqualUnmodifiableListView) return _usersname;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersname);
  }

  @override
  final Message? lastMessage;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Chat(id: $id, chatState: $chatState, createdAt: $createdAt, usersId: $usersId, usersname: $usersname, lastMessage: $lastMessage, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatState, chatState) ||
                other.chatState == chatState) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._usersId, _usersId) &&
            const DeepCollectionEquality()
                .equals(other._usersname, _usersname) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatState,
      createdAt,
      const DeepCollectionEquality().hash(_usersId),
      const DeepCollectionEquality().hash(_usersname),
      lastMessage,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {final String? id,
      required final ChatState chatState,
      required final DateTime createdAt,
      required final List<String> usersId,
      required final List<String> usersname,
      required final Message? lastMessage,
      required final DateTime updatedAt}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String? get id;
  @override
  ChatState get chatState;
  @override
  DateTime get createdAt;
  @override
  List<String> get usersId;
  @override
  List<String> get usersname;
  @override
  Message? get lastMessage;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
