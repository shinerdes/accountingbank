// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllAnswer _$AllAnswerFromJson(Map<String, dynamic> json) {
  return _AllAnswer.fromJson(json);
}

/// @nodoc
mixin _$AllAnswer {
  List<AllanswerData> get data => throw _privateConstructorUsedError;
  AllanswerPageInfo get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this AllAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllAnswerCopyWith<AllAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllAnswerCopyWith<$Res> {
  factory $AllAnswerCopyWith(AllAnswer value, $Res Function(AllAnswer) then) =
      _$AllAnswerCopyWithImpl<$Res, AllAnswer>;
  @useResult
  $Res call({List<AllanswerData> data, AllanswerPageInfo pageInfo});

  $AllanswerPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$AllAnswerCopyWithImpl<$Res, $Val extends AllAnswer>
    implements $AllAnswerCopyWith<$Res> {
  _$AllAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllAnswer
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
              as List<AllanswerData>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as AllanswerPageInfo,
    ) as $Val);
  }

  /// Create a copy of AllAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AllanswerPageInfoCopyWith<$Res> get pageInfo {
    return $AllanswerPageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllAnswerImplCopyWith<$Res>
    implements $AllAnswerCopyWith<$Res> {
  factory _$$AllAnswerImplCopyWith(
          _$AllAnswerImpl value, $Res Function(_$AllAnswerImpl) then) =
      __$$AllAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AllanswerData> data, AllanswerPageInfo pageInfo});

  @override
  $AllanswerPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$AllAnswerImplCopyWithImpl<$Res>
    extends _$AllAnswerCopyWithImpl<$Res, _$AllAnswerImpl>
    implements _$$AllAnswerImplCopyWith<$Res> {
  __$$AllAnswerImplCopyWithImpl(
      _$AllAnswerImpl _value, $Res Function(_$AllAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_$AllAnswerImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllanswerData>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as AllanswerPageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllAnswerImpl implements _AllAnswer {
  _$AllAnswerImpl(
      {required final List<AllanswerData> data, required this.pageInfo})
      : _data = data;

  factory _$AllAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllAnswerImplFromJson(json);

  final List<AllanswerData> _data;
  @override
  List<AllanswerData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final AllanswerPageInfo pageInfo;

  @override
  String toString() {
    return 'AllAnswer(data: $data, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllAnswerImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageInfo);

  /// Create a copy of AllAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllAnswerImplCopyWith<_$AllAnswerImpl> get copyWith =>
      __$$AllAnswerImplCopyWithImpl<_$AllAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllAnswerImplToJson(
      this,
    );
  }
}

abstract class _AllAnswer implements AllAnswer {
  factory _AllAnswer(
      {required final List<AllanswerData> data,
      required final AllanswerPageInfo pageInfo}) = _$AllAnswerImpl;

  factory _AllAnswer.fromJson(Map<String, dynamic> json) =
      _$AllAnswerImpl.fromJson;

  @override
  List<AllanswerData> get data;
  @override
  AllanswerPageInfo get pageInfo;

  /// Create a copy of AllAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllAnswerImplCopyWith<_$AllAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllanswerData _$AllanswerDataFromJson(Map<String, dynamic> json) {
  return _AllanswerData.fromJson(json);
}

/// @nodoc
mixin _$AllanswerData {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AllanswerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllanswerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllanswerDataCopyWith<AllanswerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllanswerDataCopyWith<$Res> {
  factory $AllanswerDataCopyWith(
          AllanswerData value, $Res Function(AllanswerData) then) =
      _$AllanswerDataCopyWithImpl<$Res, AllanswerData>;
  @useResult
  $Res call({int id, String username, String content, String createdAt});
}

/// @nodoc
class _$AllanswerDataCopyWithImpl<$Res, $Val extends AllanswerData>
    implements $AllanswerDataCopyWith<$Res> {
  _$AllanswerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllanswerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllanswerDataImplCopyWith<$Res>
    implements $AllanswerDataCopyWith<$Res> {
  factory _$$AllanswerDataImplCopyWith(
          _$AllanswerDataImpl value, $Res Function(_$AllanswerDataImpl) then) =
      __$$AllanswerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String content, String createdAt});
}

/// @nodoc
class __$$AllanswerDataImplCopyWithImpl<$Res>
    extends _$AllanswerDataCopyWithImpl<$Res, _$AllanswerDataImpl>
    implements _$$AllanswerDataImplCopyWith<$Res> {
  __$$AllanswerDataImplCopyWithImpl(
      _$AllanswerDataImpl _value, $Res Function(_$AllanswerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllanswerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$AllanswerDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllanswerDataImpl implements _AllanswerData {
  _$AllanswerDataImpl(
      {required this.id,
      required this.username,
      required this.content,
      required this.createdAt});

  factory _$AllanswerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllanswerDataImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String content;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'AllanswerData(id: $id, username: $username, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllanswerDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, content, createdAt);

  /// Create a copy of AllanswerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllanswerDataImplCopyWith<_$AllanswerDataImpl> get copyWith =>
      __$$AllanswerDataImplCopyWithImpl<_$AllanswerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllanswerDataImplToJson(
      this,
    );
  }
}

abstract class _AllanswerData implements AllanswerData {
  factory _AllanswerData(
      {required final int id,
      required final String username,
      required final String content,
      required final String createdAt}) = _$AllanswerDataImpl;

  factory _AllanswerData.fromJson(Map<String, dynamic> json) =
      _$AllanswerDataImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get content;
  @override
  String get createdAt;

  /// Create a copy of AllanswerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllanswerDataImplCopyWith<_$AllanswerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllanswerPageInfo _$AllanswerPageInfoFromJson(Map<String, dynamic> json) {
  return _AllanswerPageInfo.fromJson(json);
}

/// @nodoc
mixin _$AllanswerPageInfo {
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this AllanswerPageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllanswerPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllanswerPageInfoCopyWith<AllanswerPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllanswerPageInfoCopyWith<$Res> {
  factory $AllanswerPageInfoCopyWith(
          AllanswerPageInfo value, $Res Function(AllanswerPageInfo) then) =
      _$AllanswerPageInfoCopyWithImpl<$Res, AllanswerPageInfo>;
  @useResult
  $Res call({int totalElements, int totalPages, int currentPage, int pageSize});
}

/// @nodoc
class _$AllanswerPageInfoCopyWithImpl<$Res, $Val extends AllanswerPageInfo>
    implements $AllanswerPageInfoCopyWith<$Res> {
  _$AllanswerPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllanswerPageInfo
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
abstract class _$$AllanswerPageInfoImplCopyWith<$Res>
    implements $AllanswerPageInfoCopyWith<$Res> {
  factory _$$AllanswerPageInfoImplCopyWith(_$AllanswerPageInfoImpl value,
          $Res Function(_$AllanswerPageInfoImpl) then) =
      __$$AllanswerPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalElements, int totalPages, int currentPage, int pageSize});
}

/// @nodoc
class __$$AllanswerPageInfoImplCopyWithImpl<$Res>
    extends _$AllanswerPageInfoCopyWithImpl<$Res, _$AllanswerPageInfoImpl>
    implements _$$AllanswerPageInfoImplCopyWith<$Res> {
  __$$AllanswerPageInfoImplCopyWithImpl(_$AllanswerPageInfoImpl _value,
      $Res Function(_$AllanswerPageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllanswerPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? pageSize = null,
  }) {
    return _then(_$AllanswerPageInfoImpl(
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
class _$AllanswerPageInfoImpl implements _AllanswerPageInfo {
  _$AllanswerPageInfoImpl(
      {required this.totalElements,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});

  factory _$AllanswerPageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllanswerPageInfoImplFromJson(json);

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
    return 'AllanswerPageInfo(totalElements: $totalElements, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllanswerPageInfoImpl &&
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

  /// Create a copy of AllanswerPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllanswerPageInfoImplCopyWith<_$AllanswerPageInfoImpl> get copyWith =>
      __$$AllanswerPageInfoImplCopyWithImpl<_$AllanswerPageInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllanswerPageInfoImplToJson(
      this,
    );
  }
}

abstract class _AllanswerPageInfo implements AllanswerPageInfo {
  factory _AllanswerPageInfo(
      {required final int totalElements,
      required final int totalPages,
      required final int currentPage,
      required final int pageSize}) = _$AllanswerPageInfoImpl;

  factory _AllanswerPageInfo.fromJson(Map<String, dynamic> json) =
      _$AllanswerPageInfoImpl.fromJson;

  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  int get pageSize;

  /// Create a copy of AllanswerPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllanswerPageInfoImplCopyWith<_$AllanswerPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
