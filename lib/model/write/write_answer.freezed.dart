// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteAnswer _$WriteAnswerFromJson(Map<String, dynamic> json) {
  return _WriteAnswer.fromJson(json);
}

/// @nodoc
mixin _$WriteAnswer {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this WriteAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WriteAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WriteAnswerCopyWith<WriteAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteAnswerCopyWith<$Res> {
  factory $WriteAnswerCopyWith(
          WriteAnswer value, $Res Function(WriteAnswer) then) =
      _$WriteAnswerCopyWithImpl<$Res, WriteAnswer>;
  @useResult
  $Res call({String username, String password, String content});
}

/// @nodoc
class _$WriteAnswerCopyWithImpl<$Res, $Val extends WriteAnswer>
    implements $WriteAnswerCopyWith<$Res> {
  _$WriteAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WriteAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteAnswerImplCopyWith<$Res>
    implements $WriteAnswerCopyWith<$Res> {
  factory _$$WriteAnswerImplCopyWith(
          _$WriteAnswerImpl value, $Res Function(_$WriteAnswerImpl) then) =
      __$$WriteAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, String content});
}

/// @nodoc
class __$$WriteAnswerImplCopyWithImpl<$Res>
    extends _$WriteAnswerCopyWithImpl<$Res, _$WriteAnswerImpl>
    implements _$$WriteAnswerImplCopyWith<$Res> {
  __$$WriteAnswerImplCopyWithImpl(
      _$WriteAnswerImpl _value, $Res Function(_$WriteAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of WriteAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? content = null,
  }) {
    return _then(_$WriteAnswerImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteAnswerImpl implements _WriteAnswer {
  _$WriteAnswerImpl(
      {required this.username, required this.password, required this.content});

  factory _$WriteAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteAnswerImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String content;

  @override
  String toString() {
    return 'WriteAnswer(username: $username, password: $password, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteAnswerImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, content);

  /// Create a copy of WriteAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteAnswerImplCopyWith<_$WriteAnswerImpl> get copyWith =>
      __$$WriteAnswerImplCopyWithImpl<_$WriteAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteAnswerImplToJson(
      this,
    );
  }
}

abstract class _WriteAnswer implements WriteAnswer {
  factory _WriteAnswer(
      {required final String username,
      required final String password,
      required final String content}) = _$WriteAnswerImpl;

  factory _WriteAnswer.fromJson(Map<String, dynamic> json) =
      _$WriteAnswerImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String get content;

  /// Create a copy of WriteAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WriteAnswerImplCopyWith<_$WriteAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
