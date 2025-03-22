// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneQuestion _$OneQuestionFromJson(Map<String, dynamic> json) {
  return _OneQuestion.fromJson(json);
}

/// @nodoc
mixin _$OneQuestion {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get answerCount => throw _privateConstructorUsedError;
  bool get answeredByAdmin => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OneQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneQuestionCopyWith<OneQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneQuestionCopyWith<$Res> {
  factory $OneQuestionCopyWith(
          OneQuestion value, $Res Function(OneQuestion) then) =
      _$OneQuestionCopyWithImpl<$Res, OneQuestion>;
  @useResult
  $Res call(
      {int id,
      String title,
      String username,
      String content,
      int answerCount,
      bool answeredByAdmin,
      String createdAt});
}

/// @nodoc
class _$OneQuestionCopyWithImpl<$Res, $Val extends OneQuestion>
    implements $OneQuestionCopyWith<$Res> {
  _$OneQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? username = null,
    Object? content = null,
    Object? answerCount = null,
    Object? answeredByAdmin = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      answeredByAdmin: null == answeredByAdmin
          ? _value.answeredByAdmin
          : answeredByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneQuestionImplCopyWith<$Res>
    implements $OneQuestionCopyWith<$Res> {
  factory _$$OneQuestionImplCopyWith(
          _$OneQuestionImpl value, $Res Function(_$OneQuestionImpl) then) =
      __$$OneQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String username,
      String content,
      int answerCount,
      bool answeredByAdmin,
      String createdAt});
}

/// @nodoc
class __$$OneQuestionImplCopyWithImpl<$Res>
    extends _$OneQuestionCopyWithImpl<$Res, _$OneQuestionImpl>
    implements _$$OneQuestionImplCopyWith<$Res> {
  __$$OneQuestionImplCopyWithImpl(
      _$OneQuestionImpl _value, $Res Function(_$OneQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? username = null,
    Object? content = null,
    Object? answerCount = null,
    Object? answeredByAdmin = null,
    Object? createdAt = null,
  }) {
    return _then(_$OneQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      answeredByAdmin: null == answeredByAdmin
          ? _value.answeredByAdmin
          : answeredByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneQuestionImpl implements _OneQuestion {
  _$OneQuestionImpl(
      {required this.id,
      required this.title,
      required this.username,
      required this.content,
      required this.answerCount,
      required this.answeredByAdmin,
      required this.createdAt});

  factory _$OneQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneQuestionImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String username;
  @override
  final String content;
  @override
  final int answerCount;
  @override
  final bool answeredByAdmin;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'OneQuestion(id: $id, title: $title, username: $username, content: $content, answerCount: $answerCount, answeredByAdmin: $answeredByAdmin, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount) &&
            (identical(other.answeredByAdmin, answeredByAdmin) ||
                other.answeredByAdmin == answeredByAdmin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, username, content,
      answerCount, answeredByAdmin, createdAt);

  /// Create a copy of OneQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneQuestionImplCopyWith<_$OneQuestionImpl> get copyWith =>
      __$$OneQuestionImplCopyWithImpl<_$OneQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneQuestionImplToJson(
      this,
    );
  }
}

abstract class _OneQuestion implements OneQuestion {
  factory _OneQuestion(
      {required final int id,
      required final String title,
      required final String username,
      required final String content,
      required final int answerCount,
      required final bool answeredByAdmin,
      required final String createdAt}) = _$OneQuestionImpl;

  factory _OneQuestion.fromJson(Map<String, dynamic> json) =
      _$OneQuestionImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get username;
  @override
  String get content;
  @override
  int get answerCount;
  @override
  bool get answeredByAdmin;
  @override
  String get createdAt;

  /// Create a copy of OneQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneQuestionImplCopyWith<_$OneQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
