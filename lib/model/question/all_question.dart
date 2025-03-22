import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_question.freezed.dart';
part 'all_question.g.dart';

@freezed
class AllQuestion with _$AllQuestion {
  factory AllQuestion({
    required List<AllquestionData> data,
    required AllquestionPageInfo pageInfo,
  }) = _AllQuestion;

  factory AllQuestion.fromJson(Map<String, dynamic> json) =>
      _$AllQuestionFromJson(json);
}

@freezed
class AllquestionData with _$AllquestionData {
  factory AllquestionData({
    required int id,
    required String title,
    required String username,
    required String content,
    required int answerCount,
    required bool answeredByAdmin,
    required String createdAt,
  }) = _AllquestionData;

  factory AllquestionData.fromJson(Map<String, dynamic> json) =>
      _$AllquestionDataFromJson(json);
}

@freezed
class AllquestionPageInfo with _$AllquestionPageInfo {
  factory AllquestionPageInfo({
    required int totalElements,
    required int totalPages,
    required int currentPage,
    required int pageSize,
  }) = _AllquestionPageInfo;

  factory AllquestionPageInfo.fromJson(Map<String, dynamic> json) =>
      _$AllquestionPageInfoFromJson(json);
}
