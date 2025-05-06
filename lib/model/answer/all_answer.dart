import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_answer.freezed.dart';
part 'all_answer.g.dart';

@freezed
class AllAnswer with _$AllAnswer {
  factory AllAnswer({
    required List<AllanswerData> data,
    required AllanswerPageInfo pageInfo,
  }) = _AllAnswer;

  factory AllAnswer.fromJson(Map<String, dynamic> json) =>
      _$AllAnswerFromJson(json);
}

@freezed
class AllanswerData with _$AllanswerData {
  factory AllanswerData({
    required int id,
    required String username,
    required String content,
    required String createdAt,
  }) = _AllanswerData;

  factory AllanswerData.fromJson(Map<String, dynamic> json) =>
      _$AllanswerDataFromJson(json);
}

@freezed
class AllanswerPageInfo with _$AllanswerPageInfo {
  factory AllanswerPageInfo({
    required int totalElements,
    required int totalPages,
    required int currentPage,
    required int pageSize,
  }) = _AllanswerPageInfo;

  factory AllanswerPageInfo.fromJson(Map<String, dynamic> json) =>
      _$AllanswerPageInfoFromJson(json);
}
