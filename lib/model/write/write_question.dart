import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_question.freezed.dart';
part 'write_question.g.dart';

@freezed
class WriteQuestion with _$WriteQuestion {
  factory WriteQuestion({
    required String username,
    required String password,
    required String title,
    required String content,
  }) = _WriteQuestion;

  factory WriteQuestion.fromJson(Map<String, dynamic> json) =>
      _$WriteQuestionFromJson(json);
}
