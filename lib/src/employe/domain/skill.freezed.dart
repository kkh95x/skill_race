// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res, Skill>;
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res, $Val extends Skill>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

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
abstract class _$$_SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$_SkillCopyWith(_$_Skill value, $Res Function(_$_Skill) then) =
      __$$_SkillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class __$$_SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res, _$_Skill>
    implements _$$_SkillCopyWith<$Res> {
  __$$_SkillCopyWithImpl(_$_Skill _value, $Res Function(_$_Skill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$_Skill(
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
class _$_Skill implements _Skill {
  const _$_Skill({this.id, required this.name});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$$_SkillFromJson(json);

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'Skill(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Skill &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      __$$_SkillCopyWithImpl<_$_Skill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  const factory _Skill({final String? id, required final String name}) =
      _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      throw _privateConstructorUsedError;
}
