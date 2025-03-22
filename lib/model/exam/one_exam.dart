import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_exam.freezed.dart';
part 'one_exam.g.dart';

@freezed
class OneExam with _$OneExam {
  factory OneExam({
    required int id,
    required String name,
    required int year,
  }) = _OneExam;

  factory OneExam.fromJson(Map<String, dynamic> json) =>
      _$OneExamFromJson(json);
}
