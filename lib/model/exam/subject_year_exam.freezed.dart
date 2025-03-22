// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_year_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectYearExam _$SubjectYearExamFromJson(Map<String, dynamic> json) {
  return _SubjectYearExam.fromJson(json);
}

/// @nodoc
mixin _$SubjectYearExam {
  List<SubjectYearExamData> get data => throw _privateConstructorUsedError;

  /// Serializes this SubjectYearExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectYearExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectYearExamCopyWith<SubjectYearExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectYearExamCopyWith<$Res> {
  factory $SubjectYearExamCopyWith(
          SubjectYearExam value, $Res Function(SubjectYearExam) then) =
      _$SubjectYearExamCopyWithImpl<$Res, SubjectYearExam>;
  @useResult
  $Res call({List<SubjectYearExamData> data});
}

/// @nodoc
class _$SubjectYearExamCopyWithImpl<$Res, $Val extends SubjectYearExam>
    implements $SubjectYearExamCopyWith<$Res> {
  _$SubjectYearExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectYearExam
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
              as List<SubjectYearExamData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectYearExamImplCopyWith<$Res>
    implements $SubjectYearExamCopyWith<$Res> {
  factory _$$SubjectYearExamImplCopyWith(_$SubjectYearExamImpl value,
          $Res Function(_$SubjectYearExamImpl) then) =
      __$$SubjectYearExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubjectYearExamData> data});
}

/// @nodoc
class __$$SubjectYearExamImplCopyWithImpl<$Res>
    extends _$SubjectYearExamCopyWithImpl<$Res, _$SubjectYearExamImpl>
    implements _$$SubjectYearExamImplCopyWith<$Res> {
  __$$SubjectYearExamImplCopyWithImpl(
      _$SubjectYearExamImpl _value, $Res Function(_$SubjectYearExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectYearExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SubjectYearExamImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubjectYearExamData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectYearExamImpl implements _SubjectYearExam {
  _$SubjectYearExamImpl({required final List<SubjectYearExamData> data})
      : _data = data;

  factory _$SubjectYearExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectYearExamImplFromJson(json);

  final List<SubjectYearExamData> _data;
  @override
  List<SubjectYearExamData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SubjectYearExam(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectYearExamImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SubjectYearExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectYearExamImplCopyWith<_$SubjectYearExamImpl> get copyWith =>
      __$$SubjectYearExamImplCopyWithImpl<_$SubjectYearExamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectYearExamImplToJson(
      this,
    );
  }
}

abstract class _SubjectYearExam implements SubjectYearExam {
  factory _SubjectYearExam({required final List<SubjectYearExamData> data}) =
      _$SubjectYearExamImpl;

  factory _SubjectYearExam.fromJson(Map<String, dynamic> json) =
      _$SubjectYearExamImpl.fromJson;

  @override
  List<SubjectYearExamData> get data;

  /// Create a copy of SubjectYearExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectYearExamImplCopyWith<_$SubjectYearExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectYearExamData _$SubjectYearExamDataFromJson(Map<String, dynamic> json) {
  return _SubjectYearExamData.fromJson(json);
}

/// @nodoc
mixin _$SubjectYearExamData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Serializes this SubjectYearExamData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectYearExamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectYearExamDataCopyWith<SubjectYearExamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectYearExamDataCopyWith<$Res> {
  factory $SubjectYearExamDataCopyWith(
          SubjectYearExamData value, $Res Function(SubjectYearExamData) then) =
      _$SubjectYearExamDataCopyWithImpl<$Res, SubjectYearExamData>;
  @useResult
  $Res call({int id, String name, int year});
}

/// @nodoc
class _$SubjectYearExamDataCopyWithImpl<$Res, $Val extends SubjectYearExamData>
    implements $SubjectYearExamDataCopyWith<$Res> {
  _$SubjectYearExamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectYearExamData
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
abstract class _$$SubjectYearExamDataImplCopyWith<$Res>
    implements $SubjectYearExamDataCopyWith<$Res> {
  factory _$$SubjectYearExamDataImplCopyWith(_$SubjectYearExamDataImpl value,
          $Res Function(_$SubjectYearExamDataImpl) then) =
      __$$SubjectYearExamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int year});
}

/// @nodoc
class __$$SubjectYearExamDataImplCopyWithImpl<$Res>
    extends _$SubjectYearExamDataCopyWithImpl<$Res, _$SubjectYearExamDataImpl>
    implements _$$SubjectYearExamDataImplCopyWith<$Res> {
  __$$SubjectYearExamDataImplCopyWithImpl(_$SubjectYearExamDataImpl _value,
      $Res Function(_$SubjectYearExamDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectYearExamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
  }) {
    return _then(_$SubjectYearExamDataImpl(
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
class _$SubjectYearExamDataImpl implements _SubjectYearExamData {
  _$SubjectYearExamDataImpl(
      {required this.id, required this.name, required this.year});

  factory _$SubjectYearExamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectYearExamDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int year;

  @override
  String toString() {
    return 'SubjectYearExamData(id: $id, name: $name, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectYearExamDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, year);

  /// Create a copy of SubjectYearExamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectYearExamDataImplCopyWith<_$SubjectYearExamDataImpl> get copyWith =>
      __$$SubjectYearExamDataImplCopyWithImpl<_$SubjectYearExamDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectYearExamDataImplToJson(
      this,
    );
  }
}

abstract class _SubjectYearExamData implements SubjectYearExamData {
  factory _SubjectYearExamData(
      {required final int id,
      required final String name,
      required final int year}) = _$SubjectYearExamDataImpl;

  factory _SubjectYearExamData.fromJson(Map<String, dynamic> json) =
      _$SubjectYearExamDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get year;

  /// Create a copy of SubjectYearExamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectYearExamDataImplCopyWith<_$SubjectYearExamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
