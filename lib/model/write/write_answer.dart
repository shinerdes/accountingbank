import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_answer.freezed.dart';
part 'write_answer.g.dart';

@freezed
class WriteAnswer with _$WriteAnswer {
  factory WriteAnswer({
    required String username,
    required String password,
    required String content,
  }) = _WriteAnswer;

  factory WriteAnswer.fromJson(Map<String, dynamic> json) =>
      _$WriteAnswerFromJson(json);
}
