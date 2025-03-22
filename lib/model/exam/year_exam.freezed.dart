// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YearExam _$YearExamFromJson(Map<String, dynamic> json) {
  return _YearExam.fromJson(json);
}

/// @nodoc
mixin _$YearExam {
  List<int> get data => throw _privateConstructorUsedError;

  /// Serializes this YearExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YearExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearExamCopyWith<YearExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearExamCopyWith<$Res> {
  factory $YearExamCopyWith(YearExam value, $Res Function(YearExam) then) =
      _$YearExamCopyWithImpl<$Res, YearExam>;
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class _$YearExamCopyWithImpl<$Res, $Val extends YearExam>
    implements $YearExamCopyWith<$Res> {
  _$YearExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YearExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearExamImplCopyWith<$Res>
    implements $YearExamCopyWith<$Res> {
  factory _$$YearExamImplCopyWith(
          _$YearExamImpl value, $Res Function(_$YearExamImpl) then) =
      __$$YearExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class __$$YearExamImplCopyWithImpl<$Res>
    extends _$YearExamCopyWithImpl<$Res, _$YearExamImpl>
    implements _$$YearExamImplCopyWith<$Res> {
  __$$YearExamImplCopyWithImpl(
      _$YearExamImpl _value, $Res Function(_$YearExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of YearExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$YearExamImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearExamImpl implements _YearExam {
  _$YearExamImpl({required final List<int> data}) : _data = data;

  factory _$YearExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearExamImplFromJson(json);

  final List<int> _data;
  @override
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'YearExam(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearExamImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of YearExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearExamImplCopyWith<_$YearExamImpl> get copyWith =>
      __$$YearExamImplCopyWithImpl<_$YearExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearExamImplToJson(
      this,
    );
  }
}

abstract class _YearExam implements YearExam {
  factory _YearExam({required final List<int> data}) = _$YearExamImpl;

  factory _YearExam.fromJson(Map<String, dynamic> json) =
      _$YearExamImpl.fromJson;

  @override
  List<int> get data;

  /// Create a copy of YearExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearExamImplCopyWith<_$YearExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
