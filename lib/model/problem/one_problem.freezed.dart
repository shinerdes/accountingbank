// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneProblem _$OneProblemFromJson(Map<String, dynamic> json) {
  return _OneProblem.fromJson(json);
}

/// @nodoc
mixin _$OneProblem {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  List<OneChoice> get choices => throw _privateConstructorUsedError;

  /// Serializes this OneProblem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneProblemCopyWith<OneProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneProblemCopyWith<$Res> {
  factory $OneProblemCopyWith(
          OneProblem value, $Res Function(OneProblem) then) =
      _$OneProblemCopyWithImpl<$Res, OneProblem>;
  @useResult
  $Res call(
      {int id,
      String content,
      int number,
      String? explanation,
      List<OneChoice> choices});
}

/// @nodoc
class _$OneProblemCopyWithImpl<$Res, $Val extends OneProblem>
    implements $OneProblemCopyWith<$Res> {
  _$OneProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? number = null,
    Object? explanation = freezed,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<OneChoice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneProblemImplCopyWith<$Res>
    implements $OneProblemCopyWith<$Res> {
  factory _$$OneProblemImplCopyWith(
          _$OneProblemImpl value, $Res Function(_$OneProblemImpl) then) =
      __$$OneProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      int number,
      String? explanation,
      List<OneChoice> choices});
}

/// @nodoc
class __$$OneProblemImplCopyWithImpl<$Res>
    extends _$OneProblemCopyWithImpl<$Res, _$OneProblemImpl>
    implements _$$OneProblemImplCopyWith<$Res> {
  __$$OneProblemImplCopyWithImpl(
      _$OneProblemImpl _value, $Res Function(_$OneProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? number = null,
    Object? explanation = freezed,
    Object? choices = null,
  }) {
    return _then(_$OneProblemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<OneChoice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneProblemImpl implements _OneProblem {
  _$OneProblemImpl(
      {required this.id,
      required this.content,
      required this.number,
      required this.explanation,
      required final List<OneChoice> choices})
      : _choices = choices;

  factory _$OneProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneProblemImplFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final int number;
  @override
  final String? explanation;
  final List<OneChoice> _choices;
  @override
  List<OneChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'OneProblem(id: $id, content: $content, number: $number, explanation: $explanation, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneProblemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, number, explanation,
      const DeepCollectionEquality().hash(_choices));

  /// Create a copy of OneProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneProblemImplCopyWith<_$OneProblemImpl> get copyWith =>
      __$$OneProblemImplCopyWithImpl<_$OneProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneProblemImplToJson(
      this,
    );
  }
}

abstract class _OneProblem implements OneProblem {
  factory _OneProblem(
      {required final int id,
      required final String content,
      required final int number,
      required final String? explanation,
      required final List<OneChoice> choices}) = _$OneProblemImpl;

  factory _OneProblem.fromJson(Map<String, dynamic> json) =
      _$OneProblemImpl.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  int get number;
  @override
  String? get explanation;
  @override
  List<OneChoice> get choices;

  /// Create a copy of OneProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneProblemImplCopyWith<_$OneProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OneChoice _$OneChoiceFromJson(Map<String, dynamic> json) {
  return _OneChoice.fromJson(json);
}

/// @nodoc
mixin _$OneChoice {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isAnswer => throw _privateConstructorUsedError;

  /// Serializes this OneChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneChoiceCopyWith<OneChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneChoiceCopyWith<$Res> {
  factory $OneChoiceCopyWith(OneChoice value, $Res Function(OneChoice) then) =
      _$OneChoiceCopyWithImpl<$Res, OneChoice>;
  @useResult
  $Res call({int id, int number, String content, bool isAnswer});
}

/// @nodoc
class _$OneChoiceCopyWithImpl<$Res, $Val extends OneChoice>
    implements $OneChoiceCopyWith<$Res> {
  _$OneChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? content = null,
    Object? isAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswer: null == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneChoiceImplCopyWith<$Res>
    implements $OneChoiceCopyWith<$Res> {
  factory _$$OneChoiceImplCopyWith(
          _$OneChoiceImpl value, $Res Function(_$OneChoiceImpl) then) =
      __$$OneChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int number, String content, bool isAnswer});
}

/// @nodoc
class __$$OneChoiceImplCopyWithImpl<$Res>
    extends _$OneChoiceCopyWithImpl<$Res, _$OneChoiceImpl>
    implements _$$OneChoiceImplCopyWith<$Res> {
  __$$OneChoiceImplCopyWithImpl(
      _$OneChoiceImpl _value, $Res Function(_$OneChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? content = null,
    Object? isAnswer = null,
  }) {
    return _then(_$OneChoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isAnswer: null == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneChoiceImpl implements _OneChoice {
  _$OneChoiceImpl(
      {required this.id,
      required this.number,
      required this.content,
      required this.isAnswer});

  factory _$OneChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneChoiceImplFromJson(json);

  @override
  final int id;
  @override
  final int number;
  @override
  final String content;
  @override
  final bool isAnswer;

  @override
  String toString() {
    return 'OneChoice(id: $id, number: $number, content: $content, isAnswer: $isAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isAnswer, isAnswer) ||
                other.isAnswer == isAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, content, isAnswer);

  /// Create a copy of OneChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneChoiceImplCopyWith<_$OneChoiceImpl> get copyWith =>
      __$$OneChoiceImplCopyWithImpl<_$OneChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneChoiceImplToJson(
      this,
    );
  }
}

abstract class _OneChoice implements OneChoice {
  factory _OneChoice(
      {required final int id,
      required final int number,
      required final String content,
      required final bool isAnswer}) = _$OneChoiceImpl;

  factory _OneChoice.fromJson(Map<String, dynamic> json) =
      _$OneChoiceImpl.fromJson;

  @override
  int get id;
  @override
  int get number;
  @override
  String get content;
  @override
  bool get isAnswer;

  /// Create a copy of OneChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneChoiceImplCopyWith<_$OneChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
