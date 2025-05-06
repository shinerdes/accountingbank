// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneExam _$OneExamFromJson(Map<String, dynamic> json) {
  return _OneExam.fromJson(json);
}

/// @nodoc
mixin _$OneExam {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Serializes this OneExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneExamCopyWith<OneExam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneExamCopyWith<$Res> {
  factory $OneExamCopyWith(OneExam value, $Res Function(OneExam) then) =
      _$OneExamCopyWithImpl<$Res, OneExam>;
  @useResult
  $Res call({int id, String name, int year});
}

/// @nodoc
class _$OneExamCopyWithImpl<$Res, $Val extends OneExam>
    implements $OneExamCopyWith<$Res> {
  _$OneExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneExamImplCopyWith<$Res> implements $OneExamCopyWith<$Res> {
  factory _$$OneExamImplCopyWith(
          _$OneExamImpl value, $Res Function(_$OneExamImpl) then) =
      __$$OneExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int year});
}

/// @nodoc
class __$$OneExamImplCopyWithImpl<$Res>
    extends _$OneExamCopyWithImpl<$Res, _$OneExamImpl>
    implements _$$OneExamImplCopyWith<$Res> {
  __$$OneExamImplCopyWithImpl(
      _$OneExamImpl _value, $Res Function(_$OneExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
  }) {
    return _then(_$OneExamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneExamImpl implements _OneExam {
  _$OneExamImpl({required this.id, required this.name, required this.year});

  factory _$OneExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneExamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int year;

  @override
  String toString() {
    return 'OneExam(id: $id, name: $name, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneExamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, year);

  /// Create a copy of OneExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneExamImplCopyWith<_$OneExamImpl> get copyWith =>
      __$$OneExamImplCopyWithImpl<_$OneExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneExamImplToJson(
      this,
    );
  }
}

abstract class _OneExam implements OneExam {
  factory _OneExam(
      {required final int id,
      required final String name,
      required final int year}) = _$OneExamImpl;

  factory _OneExam.fromJson(Map<String, dynamic> json) = _$OneExamImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get year;

  /// Create a copy of OneExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneExamImplCopyWith<_$OneExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
