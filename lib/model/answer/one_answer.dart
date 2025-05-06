import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_answer.freezed.dart';
part 'one_answer.g.dart';

@freezed
class OneAnswer with _$OneAnswer {
  factory OneAnswer({
    required int id,
    required String name,
    required String content,
    required String createdAt,
  }) = _OneAnswer;

  factory OneAnswer.fromJson(Map<String, dynamic> json) =>
      _$OneAnswerFromJson(json);
}
