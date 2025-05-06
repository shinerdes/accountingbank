// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllQuestion _$AllQuestionFromJson(Map<String, dynamic> json) {
  return _AllQuestion.fromJson(json);
}

/// @nodoc
mixin _$AllQuestion {
  List<AllquestionData> get data => throw _privateConstructorUsedError;
  AllquestionPageInfo get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this AllQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllQuestionCopyWith<AllQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllQuestionCopyWith<$Res> {
  factory $AllQuestionCopyWith(
          AllQuestion value, $Res Function(AllQuestion) then) =
      _$AllQuestionCopyWithImpl<$Res, AllQuestion>;
  @useResult
  $Res call({List<AllquestionData> data, AllquestionPageInfo pageInfo});

  $AllquestionPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$AllQuestionCopyWithImpl<$Res, $Val extends AllQuestion>
    implements $AllQuestionCopyWith<$Res> {
  _$AllQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllQuestion
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
              as List<AllquestionData>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as AllquestionPageInfo,
    ) as $Val);
  }

  /// Create a copy of AllQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AllquestionPageInfoCopyWith<$Res> get pageInfo {
    return $AllquestionPageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllQuestionImplCopyWith<$Res>
    implements $AllQuestionCopyWith<$Res> {
  factory _$$AllQuestionImplCopyWith(
          _$AllQuestionImpl value, $Res Function(_$AllQuestionImpl) then) =
      __$$AllQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AllquestionData> data, AllquestionPageInfo pageInfo});

  @override
  $AllquestionPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$AllQuestionImplCopyWithImpl<$Res>
    extends _$AllQuestionCopyWithImpl<$Res, _$AllQuestionImpl>
    implements _$$AllQuestionImplCopyWith<$Res> {
  __$$AllQuestionImplCopyWithImpl(
      _$AllQuestionImpl _value, $Res Function(_$AllQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_$AllQuestionImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllquestionData>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as AllquestionPageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllQuestionImpl implements _AllQuestion {
  _$AllQuestionImpl(
      {required final List<AllquestionData> data, required this.pageInfo})
      : _data = data;

  factory _$AllQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllQuestionImplFromJson(json);

  final List<AllquestionData> _data;
  @override
  List<AllquestionData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final AllquestionPageInfo pageInfo;

  @override
  String toString() {
    return 'AllQuestion(data: $data, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllQuestionImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageInfo);

  /// Create a copy of AllQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllQuestionImplCopyWith<_$AllQuestionImpl> get copyWith =>
      __$$AllQuestionImplCopyWithImpl<_$AllQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllQuestionImplToJson(
      this,
    );
  }
}

abstract class _AllQuestion implements AllQuestion {
  factory _AllQuestion(
      {required final List<AllquestionData> data,
      required final AllquestionPageInfo pageInfo}) = _$AllQuestionImpl;

  factory _AllQuestion.fromJson(Map<String, dynamic> json) =
      _$AllQuestionImpl.fromJson;

  @override
  List<AllquestionData> get data;
  @override
  AllquestionPageInfo get pageInfo;

  /// Create a copy of AllQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllQuestionImplCopyWith<_$AllQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllquestionData _$AllquestionDataFromJson(Map<String, dynamic> json) {
  return _AllquestionData.fromJson(json);
}

/// @nodoc
mixin _$AllquestionData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get answerCount => throw _privateConstructorUsedError;
  bool get answeredByAdmin => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this AllquestionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllquestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllquestionDataCopyWith<AllquestionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllquestionDataCopyWith<$Res> {
  factory $AllquestionDataCopyWith(
          AllquestionData value, $Res Function(AllquestionData) then) =
      _$AllquestionDataCopyWithImpl<$Res, AllquestionData>;
  @useResult
  $Res call(
      {int id,
      String title,
      String username,
      String content,
      int answerCount,
      bool answeredByAdmin,
      String createdAt});
}

/// @nodoc
class _$AllquestionDataCopyWithImpl<$Res, $Val extends AllquestionData>
    implements $AllquestionDataCopyWith<$Res> {
  _$AllquestionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllquestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? username = null,
    Object? content = null,
    Object? answerCount = null,
    Object? answeredByAdmin = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      answeredByAdmin: null == answeredByAdmin
          ? _value.answeredByAdmin
          : answeredByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllquestionDataImplCopyWith<$Res>
    implements $AllquestionDataCopyWith<$Res> {
  factory _$$AllquestionDataImplCopyWith(_$AllquestionDataImpl value,
          $Res Function(_$AllquestionDataImpl) then) =
      __$$AllquestionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String username,
      String content,
      int answerCount,
      bool answeredByAdmin,
      String createdAt});
}

/// @nodoc
class __$$AllquestionDataImplCopyWithImpl<$Res>
    extends _$AllquestionDataCopyWithImpl<$Res, _$AllquestionDataImpl>
    implements _$$AllquestionDataImplCopyWith<$Res> {
  __$$AllquestionDataImplCopyWithImpl(
      _$AllquestionDataImpl _value, $Res Function(_$AllquestionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllquestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? username = null,
    Object? content = null,
    Object? answerCount = null,
    Object? answeredByAdmin = null,
    Object? createdAt = null,
  }) {
    return _then(_$AllquestionDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      answeredByAdmin: null == answeredByAdmin
          ? _value.answeredByAdmin
          : answeredByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllquestionDataImpl implements _AllquestionData {
  _$AllquestionDataImpl(
      {required this.id,
      required this.title,
      required this.username,
      required this.content,
      required this.answerCount,
      required this.answeredByAdmin,
      required this.createdAt});

  factory _$AllquestionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllquestionDataImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String username;
  @override
  final String content;
  @override
  final int answerCount;
  @override
  final bool answeredByAdmin;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'AllquestionData(id: $id, title: $title, username: $username, content: $content, answerCount: $answerCount, answeredByAdmin: $answeredByAdmin, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllquestionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount) &&
            (identical(other.answeredByAdmin, answeredByAdmin) ||
                other.answeredByAdmin == answeredByAdmin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, username, content,
      answerCount, answeredByAdmin, createdAt);

  /// Create a copy of AllquestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllquestionDataImplCopyWith<_$AllquestionDataImpl> get copyWith =>
      __$$AllquestionDataImplCopyWithImpl<_$AllquestionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllquestionDataImplToJson(
      this,
    );
  }
}

abstract class _AllquestionData implements AllquestionData {
  factory _AllquestionData(
      {required final int id,
      required final String title,
      required final String username,
      required final String content,
      required final int answerCount,
      required final bool answeredByAdmin,
      required final String createdAt}) = _$AllquestionDataImpl;

  factory _AllquestionData.fromJson(Map<String, dynamic> json) =
      _$AllquestionDataImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get username;
  @override
  String get content;
  @override
  int get answerCount;
  @override
  bool get answeredByAdmin;
  @override
  String get createdAt;

  /// Create a copy of AllquestionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllquestionDataImplCopyWith<_$AllquestionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllquestionPageInfo _$AllquestionPageInfoFromJson(Map<String, dynamic> json) {
  return _AllquestionPageInfo.fromJson(json);
}

/// @nodoc
mixin _$AllquestionPageInfo {
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this AllquestionPageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllquestionPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllquestionPageInfoCopyWith<AllquestionPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllquestionPageInfoCopyWith<$Res> {
  factory $AllquestionPageInfoCopyWith(
          AllquestionPageInfo value, $Res Function(AllquestionPageInfo) then) =
      _$AllquestionPageInfoCopyWithImpl<$Res, AllquestionPageInfo>;
  @useResult
  $Res call({int totalElements, int totalPages, int currentPage, int pageSize});
}

/// @nodoc
class _$AllquestionPageInfoCopyWithImpl<$Res, $Val extends AllquestionPageInfo>
    implements $AllquestionPageInfoCopyWith<$Res> {
  _$AllquestionPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllquestionPageInfo
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
abstract class _$$AllquestionPageInfoImplCopyWith<$Res>
    implements $AllquestionPageInfoCopyWith<$Res> {
  factory _$$AllquestionPageInfoImplCopyWith(_$AllquestionPageInfoImpl value,
          $Res Function(_$AllquestionPageInfoImpl) then) =
      __$$AllquestionPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalElements, int totalPages, int currentPage, int pageSize});
}

/// @nodoc
class __$$AllquestionPageInfoImplCopyWithImpl<$Res>
    extends _$AllquestionPageInfoCopyWithImpl<$Res, _$AllquestionPageInfoImpl>
    implements _$$AllquestionPageInfoImplCopyWith<$Res> {
  __$$AllquestionPageInfoImplCopyWithImpl(_$AllquestionPageInfoImpl _value,
      $Res Function(_$AllquestionPageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllquestionPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? pageSize = null,
  }) {
    return _then(_$AllquestionPageInfoImpl(
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
class _$AllquestionPageInfoImpl implements _AllquestionPageInfo {
  _$AllquestionPageInfoImpl(
      {required this.totalElements,
      required this.totalPages,
      required this.currentPage,
      required this.pageSize});

  factory _$AllquestionPageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllquestionPageInfoImplFromJson(json);

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
    return 'AllquestionPageInfo(totalElements: $totalElements, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllquestionPageInfoImpl &&
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

  /// Create a copy of AllquestionPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllquestionPageInfoImplCopyWith<_$AllquestionPageInfoImpl> get copyWith =>
      __$$AllquestionPageInfoImplCopyWithImpl<_$AllquestionPageInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllquestionPageInfoImplToJson(
      this,
    );
  }
}

abstract class _AllquestionPageInfo implements AllquestionPageInfo {
  factory _AllquestionPageInfo(
      {required final int totalElements,
      required final int totalPages,
      required final int currentPage,
      required final int pageSize}) = _$AllquestionPageInfoImpl;

  factory _AllquestionPageInfo.fromJson(Map<String, dynamic> json) =
      _$AllquestionPageInfoImpl.fromJson;

  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  int get pageSize;

  /// Create a copy of AllquestionPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllquestionPageInfoImplCopyWith<_$AllquestionPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
