// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculaty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Faculaty _$FaculatyFromJson(Map<String, dynamic> json) {
  return _Faculaty.fromJson(json);
}

/// @nodoc
mixin _$Faculaty {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaculatyCopyWith<Faculaty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaculatyCopyWith<$Res> {
  factory $FaculatyCopyWith(Faculaty value, $Res Function(Faculaty) then) =
      _$FaculatyCopyWithImpl<$Res, Faculaty>;
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class _$FaculatyCopyWithImpl<$Res, $Val extends Faculaty>
    implements $FaculatyCopyWith<$Res> {
  _$FaculatyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaculatyCopyWith<$Res> implements $FaculatyCopyWith<$Res> {
  factory _$$_FaculatyCopyWith(
          _$_Faculaty value, $Res Function(_$_Faculaty) then) =
      __$$_FaculatyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class __$$_FaculatyCopyWithImpl<$Res>
    extends _$FaculatyCopyWithImpl<$Res, _$_Faculaty>
    implements _$$_FaculatyCopyWith<$Res> {
  __$$_FaculatyCopyWithImpl(
      _$_Faculaty _value, $Res Function(_$_Faculaty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$_Faculaty(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Faculaty with DiagnosticableTreeMixin implements _Faculaty {
  const _$_Faculaty({this.id, required this.name});

  factory _$_Faculaty.fromJson(Map<String, dynamic> json) =>
      _$$_FaculatyFromJson(json);

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Faculaty(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Faculaty'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Faculaty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaculatyCopyWith<_$_Faculaty> get copyWith =>
      __$$_FaculatyCopyWithImpl<_$_Faculaty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FaculatyToJson(
      this,
    );
  }
}

abstract class _Faculaty implements Faculaty {
  const factory _Faculaty({final String? id, required final String name}) =
      _$_Faculaty;

  factory _Faculaty.fromJson(Map<String, dynamic> json) = _$_Faculaty.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FaculatyCopyWith<_$_Faculaty> get copyWith =>
      throw _privateConstructorUsedError;
}
