import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_question.freezed.dart';
part 'one_question.g.dart';

@freezed
class OneQuestion with _$OneQuestion {
  factory OneQuestion({
    required int id,
    required String title,
    required String username,
    required String content,
    required int answerCount,
    required bool answeredByAdmin,
    required String createdAt,
  }) = _OneQuestion;

  factory OneQuestion.fromJson(Map<String, dynamic> json) =>
      _$OneQuestionFromJson(json);
}
