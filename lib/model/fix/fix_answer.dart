import 'package:freezed_annotation/freezed_annotation.dart';

part 'fix_answer.freezed.dart';
part 'fix_answer.g.dart';

@freezed
class FixAnswer with _$FixAnswer {
  factory FixAnswer({
    required String content,
  }) = _FixAnswer;

  factory FixAnswer.fromJson(Map<String, dynamic> json) =>
      _$FixAnswerFromJson(json);
}
