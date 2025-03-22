// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneAnswer _$OneAnswerFromJson(Map<String, dynamic> json) {
  return _OneAnswer.fromJson(json);
}

/// @nodoc
mixin _$OneAnswer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OneAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneAnswerCopyWith<OneAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneAnswerCopyWith<$Res> {
  factory $OneAnswerCopyWith(OneAnswer value, $Res Function(OneAnswer) then) =
      _$OneAnswerCopyWithImpl<$Res, OneAnswer>;
  @useResult
  $Res call({int id, String name, String content, String createdAt});
}

/// @nodoc
class _$OneAnswerCopyWithImpl<$Res, $Val extends OneAnswer>
    implements $OneAnswerCopyWith<$Res> {
  _$OneAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = null,
    Object? createdAt = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneAnswerImplCopyWith<$Res>
    implements $OneAnswerCopyWith<$Res> {
  factory _$$OneAnswerImplCopyWith(
          _$OneAnswerImpl value, $Res Function(_$OneAnswerImpl) then) =
      __$$OneAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String content, String createdAt});
}

/// @nodoc
class __$$OneAnswerImplCopyWithImpl<$Res>
    extends _$OneAnswerCopyWithImpl<$Res, _$OneAnswerImpl>
    implements _$$OneAnswerImplCopyWith<$Res> {
  __$$OneAnswerImplCopyWithImpl(
      _$OneAnswerImpl _value, $Res Function(_$OneAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$OneAnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneAnswerImpl implements _OneAnswer {
  _$OneAnswerImpl(
      {required this.id,
      required this.name,
      required this.content,
      required this.createdAt});

  factory _$OneAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneAnswerImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String content;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'OneAnswer(id: $id, name: $name, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneAnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, content, createdAt);

  /// Create a copy of OneAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneAnswerImplCopyWith<_$OneAnswerImpl> get copyWith =>
      __$$OneAnswerImplCopyWithImpl<_$OneAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneAnswerImplToJson(
      this,
    );
  }
}

abstract class _OneAnswer implements OneAnswer {
  factory _OneAnswer(
      {required final int id,
      required final String name,
      required final String content,
      required final String createdAt}) = _$OneAnswerImpl;

  factory _OneAnswer.fromJson(Map<String, dynamic> json) =
      _$OneAnswerImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get content;
  @override
  String get createdAt;

  /// Create a copy of OneAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneAnswerImplCopyWith<_$OneAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
