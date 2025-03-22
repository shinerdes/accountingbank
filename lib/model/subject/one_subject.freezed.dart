// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneSubject _$OneSubjectFromJson(Map<String, dynamic> json) {
  return _OneSubject.fromJson(json);
}

/// @nodoc
mixin _$OneSubject {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this OneSubject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneSubject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneSubjectCopyWith<OneSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneSubjectCopyWith<$Res> {
  factory $OneSubjectCopyWith(
          OneSubject value, $Res Function(OneSubject) then) =
      _$OneSubjectCopyWithImpl<$Res, OneSubject>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$OneSubjectCopyWithImpl<$Res, $Val extends OneSubject>
    implements $OneSubjectCopyWith<$Res> {
  _$OneSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneSubject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneSubjectImplCopyWith<$Res>
    implements $OneSubjectCopyWith<$Res> {
  factory _$$OneSubjectImplCopyWith(
          _$OneSubjectImpl value, $Res Function(_$OneSubjectImpl) then) =
      __$$OneSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$OneSubjectImplCopyWithImpl<$Res>
    extends _$OneSubjectCopyWithImpl<$Res, _$OneSubjectImpl>
    implements _$$OneSubjectImplCopyWith<$Res> {
  __$$OneSubjectImplCopyWithImpl(
      _$OneSubjectImpl _value, $Res Function(_$OneSubjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneSubject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$OneSubjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneSubjectImpl implements _OneSubject {
  _$OneSubjectImpl({required this.id, required this.name});

  factory _$OneSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneSubjectImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'OneSubject(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneSubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of OneSubject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneSubjectImplCopyWith<_$OneSubjectImpl> get copyWith =>
      __$$OneSubjectImplCopyWithImpl<_$OneSubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneSubjectImplToJson(
      this,
    );
  }
}

abstract class _OneSubject implements OneSubject {
  factory _OneSubject({required final int id, required final String name}) =
      _$OneSubjectImpl;

  factory _OneSubject.fromJson(Map<String, dynamic> json) =
      _$OneSubjectImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of OneSubject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneSubjectImplCopyWith<_$OneSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
