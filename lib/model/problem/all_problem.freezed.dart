// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllProblem _$AllProblemFromJson(Map<String, dynamic> json) {
  return _AllProblem.fromJson(json);
}

/// @nodoc
mixin _$AllProblem {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  List<AllChoice> get choices => throw _privateConstructorUsedError;

  /// Serializes this AllProblem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllProblemCopyWith<AllProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProblemCopyWith<$Res> {
  factory $AllProblemCopyWith(
          AllProblem value, $Res Function(AllProblem) then) =
      _$AllProblemCopyWithImpl<$Res, AllProblem>;
  @useResult
  $Res call(
      {int id,
      String content,
      int number,
      String? explanation,
      List<AllChoice> choices});
}

/// @nodoc
class _$AllProblemCopyWithImpl<$Res, $Val extends AllProblem>
    implements $AllProblemCopyWith<$Res> {
  _$AllProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllProblem
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
              as List<AllChoice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllProblemImplCopyWith<$Res>
    implements $AllProblemCopyWith<$Res> {
  factory _$$AllProblemImplCopyWith(
          _$AllProblemImpl value, $Res Function(_$AllProblemImpl) then) =
      __$$AllProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      int number,
      String? explanation,
      List<AllChoice> choices});
}

/// @nodoc
class __$$AllProblemImplCopyWithImpl<$Res>
    extends _$AllProblemCopyWithImpl<$Res, _$AllProblemImpl>
    implements _$$AllProblemImplCopyWith<$Res> {
  __$$AllProblemImplCopyWithImpl(
      _$AllProblemImpl _value, $Res Function(_$AllProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllProblem
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
    return _then(_$AllProblemImpl(
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
              as List<AllChoice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllProblemImpl implements _AllProblem {
  _$AllProblemImpl(
      {required this.id,
      required this.content,
      required this.number,
      required this.explanation,
      required final List<AllChoice> choices})
      : _choices = choices;

  factory _$AllProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllProblemImplFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final int number;
  @override
  final String? explanation;
  final List<AllChoice> _choices;
  @override
  List<AllChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'AllProblem(id: $id, content: $content, number: $number, explanation: $explanation, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProblemImpl &&
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

  /// Create a copy of AllProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllProblemImplCopyWith<_$AllProblemImpl> get copyWith =>
      __$$AllProblemImplCopyWithImpl<_$AllProblemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllProblemImplToJson(
      this,
    );
  }
}

abstract class _AllProblem implements AllProblem {
  factory _AllProblem(
      {required final int id,
      required final String content,
      required final int number,
      required final String? explanation,
      required final List<AllChoice> choices}) = _$AllProblemImpl;

  factory _AllProblem.fromJson(Map<String, dynamic> json) =
      _$AllProblemImpl.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  int get number;
  @override
  String? get explanation;
  @override
  List<AllChoice> get choices;

  /// Create a copy of AllProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllProblemImplCopyWith<_$AllProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllChoice _$AllChoiceFromJson(Map<String, dynamic> json) {
  return _AllChoice.fromJson(json);
}

/// @nodoc
mixin _$AllChoice {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isAnswer => throw _privateConstructorUsedError;

  /// Serializes this AllChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllChoiceCopyWith<AllChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChoiceCopyWith<$Res> {
  factory $AllChoiceCopyWith(AllChoice value, $Res Function(AllChoice) then) =
      _$AllChoiceCopyWithImpl<$Res, AllChoice>;
  @useResult
  $Res call({int id, int number, String content, bool isAnswer});
}

/// @nodoc
class _$AllChoiceCopyWithImpl<$Res, $Val extends AllChoice>
    implements $AllChoiceCopyWith<$Res> {
  _$AllChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllChoice
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
abstract class _$$AllChoiceImplCopyWith<$Res>
    implements $AllChoiceCopyWith<$Res> {
  factory _$$AllChoiceImplCopyWith(
          _$AllChoiceImpl value, $Res Function(_$AllChoiceImpl) then) =
      __$$AllChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int number, String content, bool isAnswer});
}

/// @nodoc
class __$$AllChoiceImplCopyWithImpl<$Res>
    extends _$AllChoiceCopyWithImpl<$Res, _$AllChoiceImpl>
    implements _$$AllChoiceImplCopyWith<$Res> {
  __$$AllChoiceImplCopyWithImpl(
      _$AllChoiceImpl _value, $Res Function(_$AllChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? content = null,
    Object? isAnswer = null,
  }) {
    return _then(_$AllChoiceImpl(
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
class _$AllChoiceImpl implements _AllChoice {
  _$AllChoiceImpl(
      {required this.id,
      required this.number,
      required this.content,
      required this.isAnswer});

  factory _$AllChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllChoiceImplFromJson(json);

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
    return 'AllChoice(id: $id, number: $number, content: $content, isAnswer: $isAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isAnswer, isAnswer) ||
                other.isAnswer == isAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, content, isAnswer);

  /// Create a copy of AllChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllChoiceImplCopyWith<_$AllChoiceImpl> get copyWith =>
      __$$AllChoiceImplCopyWithImpl<_$AllChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllChoiceImplToJson(
      this,
    );
  }
}

abstract class _AllChoice implements AllChoice {
  factory _AllChoice(
      {required final int id,
      required final int number,
      required final String content,
      required final bool isAnswer}) = _$AllChoiceImpl;

  factory _AllChoice.fromJson(Map<String, dynamic> json) =
      _$AllChoiceImpl.fromJson;

  @override
  int get id;
  @override
  int get number;
  @override
  String get content;
  @override
  bool get isAnswer;

  /// Create a copy of AllChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllChoiceImplCopyWith<_$AllChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
