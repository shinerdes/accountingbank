// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fix_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FixQuestion _$FixQuestionFromJson(Map<String, dynamic> json) {
  return _FixQuestion.fromJson(json);
}

/// @nodoc
mixin _$FixQuestion {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this FixQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FixQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FixQuestionCopyWith<FixQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixQuestionCopyWith<$Res> {
  factory $FixQuestionCopyWith(
          FixQuestion value, $Res Function(FixQuestion) then) =
      _$FixQuestionCopyWithImpl<$Res, FixQuestion>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$FixQuestionCopyWithImpl<$Res, $Val extends FixQuestion>
    implements $FixQuestionCopyWith<$Res> {
  _$FixQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FixQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FixQuestionImplCopyWith<$Res>
    implements $FixQuestionCopyWith<$Res> {
  factory _$$FixQuestionImplCopyWith(
          _$FixQuestionImpl value, $Res Function(_$FixQuestionImpl) then) =
      __$$FixQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$FixQuestionImplCopyWithImpl<$Res>
    extends _$FixQuestionCopyWithImpl<$Res, _$FixQuestionImpl>
    implements _$$FixQuestionImplCopyWith<$Res> {
  __$$FixQuestionImplCopyWithImpl(
      _$FixQuestionImpl _value, $Res Function(_$FixQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of FixQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$FixQuestionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$FixQuestionImpl implements _FixQuestion {
  _$FixQuestionImpl({required this.title, required this.content});

  factory _$FixQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixQuestionImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'FixQuestion(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixQuestionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of FixQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixQuestionImplCopyWith<_$FixQuestionImpl> get copyWith =>
      __$$FixQuestionImplCopyWithImpl<_$FixQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixQuestionImplToJson(
      this,
    );
  }
}

abstract class _FixQuestion implements FixQuestion {
  factory _FixQuestion(
      {required final String title,
      required final String content}) = _$FixQuestionImpl;

  factory _FixQuestion.fromJson(Map<String, dynamic> json) =
      _$FixQuestionImpl.fromJson;

  @override
  String get title;
  @override
  String get content;

  /// Create a copy of FixQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixQuestionImplCopyWith<_$FixQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
