import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_subject.freezed.dart';
part 'all_subject.g.dart';

@freezed
class AllSubject with _$AllSubject {
  factory AllSubject({
    required List<AllsubjectData> data,
    required AllsubjectPageInfo pageInfo,
  }) = _AllSubject;

  factory AllSubject.fromJson(Map<String, dynamic> json) =>
      _$AllSubjectFromJson(json);
}

@freezed
class AllsubjectData with _$AllsubjectData {
  factory AllsubjectData({
    required int id,
    required String name,
  }) = _AllsubjectData;

  factory AllsubjectData.fromJson(Map<String, dynamic> json) =>
      _$AllsubjectDataFromJson(json);
}

@freezed
class AllsubjectPageInfo with _$AllsubjectPageInfo {
  factory AllsubjectPageInfo({
    required int totalElements,
    required int totalPages,
    required int currentPage,
    required int pageSize,
  }) = _AllsubjectPageInfo;

  factory AllsubjectPageInfo.fromJson(Map<String, dynamic> json) =>
      _$AllsubjectPageInfoFromJson(json);
}
