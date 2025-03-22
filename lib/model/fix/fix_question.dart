import 'package:freezed_annotation/freezed_annotation.dart';

part 'fix_question.freezed.dart';
part 'fix_question.g.dart';

@freezed
class FixQuestion with _$FixQuestion {
  factory FixQuestion({
    required String title,
    required String content,
  }) = _FixQuestion;

  factory FixQuestion.fromJson(Map<String, dynamic> json) =>
      _$FixQuestionFromJson(json);
}
