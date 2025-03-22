// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fix_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FixAnswer _$FixAnswerFromJson(Map<String, dynamic> json) {
  return _FixAnswer.fromJson(json);
}

/// @nodoc
mixin _$FixAnswer {
  String get content => throw _privateConstructorUsedError;

  /// Serializes this FixAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FixAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FixAnswerCopyWith<FixAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixAnswerCopyWith<$Res> {
  factory $FixAnswerCopyWith(FixAnswer value, $Res Function(FixAnswer) then) =
      _$FixAnswerCopyWithImpl<$Res, FixAnswer>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$FixAnswerCopyWithImpl<$Res, $Val extends FixAnswer>
    implements $FixAnswerCopyWith<$Res> {
  _$FixAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FixAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FixAnswerImplCopyWith<$Res>
    implements $FixAnswerCopyWith<$Res> {
  factory _$$FixAnswerImplCopyWith(
          _$FixAnswerImpl value, $Res Function(_$FixAnswerImpl) then) =
      __$$FixAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$FixAnswerImplCopyWithImpl<$Res>
    extends _$FixAnswerCopyWithImpl<$Res, _$FixAnswerImpl>
    implements _$$FixAnswerImplCopyWith<$Res> {
  __$$FixAnswerImplCopyWithImpl(
      _$FixAnswerImpl _value, $Res Function(_$FixAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$FixAnswerImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixAnswerImpl implements _FixAnswer {
  _$FixAnswerImpl({required this.content});

  factory _$FixAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixAnswerImplFromJson(json);

  @override
  final String content;

  @override
  String toString() {
    return 'FixAnswer(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixAnswerImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of FixAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixAnswerImplCopyWith<_$FixAnswerImpl> get copyWith =>
      __$$FixAnswerImplCopyWithImpl<_$FixAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixAnswerImplToJson(
      this,
    );
  }
}

abstract class _FixAnswer implements FixAnswer {
  factory _FixAnswer({required final String content}) = _$FixAnswerImpl;

  factory _FixAnswer.fromJson(Map<String, dynamic> json) =
      _$FixAnswerImpl.fromJson;

  @override
  String get content;

  /// Create a copy of FixAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixAnswerImplCopyWith<_$FixAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
