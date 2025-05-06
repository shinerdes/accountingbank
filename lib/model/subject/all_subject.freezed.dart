// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllSubject _$AllSubjectFromJson(Map<String, dynamic> json) {
  return _AllSubject.fromJson(json);
}

/// @nodoc
mixin _$AllSubject {
  List<AllsubjectData> get data => throw _privateConstructorUsedError;
  AllsubjectPageInfo get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this AllSubject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllSubject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllSubjectCopyWith<AllSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllSubjectCopyWith<$Res> {
  factory $AllSubjectCopyWith(
          AllSubject value, $Res Function(AllSubject) then) =
      _$AllSubjectCopyWithImpl<$Res, AllSubject>;
  @useResult
  $Res call({List<AllsubjectData> data, AllsubjectPageInfo pageInfo});

  $AllsubjectPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$AllSubjectCopyWithImpl<$Res, $Val extends AllSubject>
    implements $AllSubjectCopyWith<$Res> {
  _$AllSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllSubject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllsubjectData>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as AllsubjectPageInfo,
    ) as $Val);
  }

  /// Create a copy of AllSubject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AllsubjectPageInfoCopyWith<$Res> get pageInfo {
    return $AllsubjectPageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllSubjectImplCopyWith<$Res>
    implements $AllSubjectCopyWith<$Res> {
  factory _$$AllSubjectImplCopyWith(
          _$AllSubjectImpl value, $Res Function(_$AllSubjectImpl) then) =
      __$$AllSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AllsubjectData> data, AllsubjectPageInfo pageInfo});

  @override
  $AllsubjectPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$AllSubjectImplCopyWithImpl<$Res>
    extends _$AllSubjectCopyWithImpl<$Res, _$AllSubjectImpl>
    implements _$$AllSubjectImplCopyWith<$Res> {
  __$$AllSubjectImplCopyWithImpl(
      _$AllSubjectImpl _value, $Res Function(_$AllSubjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllSubject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_$AllSubjectImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllsubjectData>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as AllsubjectPageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllSubjectImpl implements _AllSubject {
  _$AllSubjectImpl(
      {required final List<AllsubjectData> data, required this.pageInfo})
      : _data = data;

  factory _$AllSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllSubjectImplFromJson(json);

  final List<AllsubjectData> _data;
  @override
  List<AllsubjectData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final AllsubjectPageInfo pageInfo;

  @override
  String toString() {
    return 'AllSubject(data: $data, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllSubjectImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageInfo);

  /// Create a copy of AllSubject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllSubjectImplCopyWith<_$AllSubjectImpl> get copyWith =>
      __$$AllSubjectImplCopyWithImpl<_$AllSubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllSubjectImplToJson(
      this,
    );
  }
}

abstract class _AllSubject implements AllSubject {
  factory _AllSubject(
      {required final List<AllsubjectData> data,
      required final AllsubjectPageInfo pageInfo}) = _$AllSubjectImpl;

  factory _AllSubject.fromJson(Map<String, dynamic> json) =
      _$AllSubjectImpl.fromJson;

  @override
  List<AllsubjectData> get data;
  @override
  AllsubjectPageInfo get pageInfo;

  /// Create a copy of AllSubject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllSubjectImplCopyWith<_$AllSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllsubjectData _$AllsubjectDataFromJson(Map<String, dynamic> json) {
  return _AllsubjectData.fromJson(json);
}

/// @nodoc
mixin _$AllsubjectData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AllsubjectData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllsubjectData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllsubjectDataCopyWith<AllsubjectData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllsubjectDataCopyWith<$Res> {
  factory $AllsubjectDataCopyWith(
          AllsubjectData value, $Res Function(AllsubjectData) then) =
      _$AllsubjectDataCopyWithImpl<$Res, AllsubjectData>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AllsubjectDataCopyWithImpl<$Res, $Val extends AllsubjectData>
    implements $AllsubjectDataCopyWith<$Res> {
  _$AllsubjectDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllsubjectData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllsubjectDataImplCopyWith<$Res>
    implements $AllsubjectDataCopyWith<$Res> {
  factory _$$AllsubjectDataImplCopyWith(_$AllsubjectDataImpl value,
          $Res Function(_$AllsubjectDataImpl) then) =
      __$$AllsubjectDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AllsubjectDataImplCopyWithImpl<$Res>
    extends _$AllsubjectDataCopyWithImpl<$Res, _$AllsubjectDataImpl>
    implements _$$AllsubjectDataImplCopyWith<$Res> {
  __$$AllsubjectDataImplCopyWithImpl(
      _$AllsubjectDataImpl _value, $Res Function(_$AllsubjectDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllsubjectData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AllsubjectDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllsubjectDataImpl implements _AllsubjectData {
  _$AllsubjectDataImpl({required this.id, required this.name});

  factory _$AllsubjectDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllsubjectDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AllsubjectData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllsubjectDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of AllsubjectData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllsubjectDataImplCopyWith<_$AllsubjectDataImpl> get copyWith =>
      __$$AllsubjectDataImplCopyWithImpl<_$AllsubjectDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllsubjectDataImplToJson(
      this,
    );
  }
}

abstract class _AllsubjectData implements AllsubjectData {
  factory _AllsubjectData({required final int id, required final String name}) =
      _$AllsubjectDataImpl;

  factory _AllsubjectData.fromJson(Map<String, dynamic> json) =
      _$AllsubjectDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of AllsubjectData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllsubjectDataImplCopyWith<_$AllsubjectDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllsubjectPageInfo _$AllsubjectPageInfoFromJson(Map<String, dynamic> json) {
  return _AllsubjectPageInfo.fromJson(json);
}

/// @nodoc
mixin _$AllsubjectPageInfo {
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this AllsubjectPageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllsubjectPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllsubjectPageInfoCopyWith<AllsubjectPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllsubjectPageInfoCopyWith<$Res> {
  factory $AllsubjectPageInfoCopyWith(
          AllsubjectPageInfo value, $Res Function(AllsubjectPageInfo) then) =
      _$AllsubjectPageInfoCopyWithImpl<$Res, AllsubjectPageInfo>;
  @useResult
  $Res call({int totalElements, int totalPages, int currentPage, int pageSize});
}

/// @nodoc
class _$AllsubjectPageInfoCopyWithImpl<$Res, $Val extends AllsubjectPageInfo>
    implements $AllsubjectPageInfoCopyWith<$Res> {
  _$AllsubjectPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllsubjectPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllsubjectPageInfoImplCopyWith<$Res>
    implements $AllsubjectPageInfoCopyWith<$Res> {
  factory _$$AllsubjectPageInfoImplCopyWith(_$AllsubjectPageInfoImpl value,
          $Res Function(_$AllsubjectPageInfoImpl) then) =
      __$$AllsubjectPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalElements, int totalPages, int currentPage, int pageSize});
}

/// @nodoc
class __$$AllsubjectPageInfoImplCopyWithImpl<$Res>
    extends _$AllsubjectPageInfoCopyWithImpl<$Res, _$AllsubjectPageInfoImpl>
    implements _$$AllsubjectPageInfoImplCopyWith<$Res> {
  __$$AllsubjectPageInfoImplCopyWithImpl(_$AllsubjectPageInfoImpl _value,
      $Res Function(_$AllsubjectPageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllsubjectPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? pageSize = null,
  }) {
    return _then(_$AllsubjectPageInfoImpl(
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllsubjectPageInfoImpl implements _AllsubjectPageInfo {
  _$AllsubjectPageInfoImpl(
      {required this.totalElements,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});

  factory _$AllsubjectPageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllsubjectPageInfoImplFromJson(json);

  @override
  final int totalElements;
  @override
  final int totalPages;
  @override
  final int currentPage;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'AllsubjectPageInfo(totalElements: $totalElements, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllsubjectPageInfoImpl &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalElements, totalPages, currentPage, pageSize);

  /// Create a copy of AllsubjectPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllsubjectPageInfoImplCopyWith<_$AllsubjectPageInfoImpl> get copyWith =>
      __$$AllsubjectPageInfoImplCopyWithImpl<_$AllsubjectPageInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllsubjectPageInfoImplToJson(
      this,
    );
  }
}

abstract class _AllsubjectPageInfo implements AllsubjectPageInfo {
  factory _AllsubjectPageInfo(
      {required final int totalElements,
      required final int totalPages,
      required final int currentPage,
      required final int pageSize}) = _$AllsubjectPageInfoImpl;

  factory _AllsubjectPageInfo.fromJson(Map<String, dynamic> json) =
      _$AllsubjectPageInfoImpl.fromJson;

  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  int get pageSize;

  /// Create a copy of AllsubjectPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllsubjectPageInfoImplCopyWith<_$AllsubjectPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
