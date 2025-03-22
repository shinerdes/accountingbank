import 'package:freezed_annotation/freezed_annotation.dart';

part "one_problem.freezed.dart";
part 'one_problem.g.dart';

@freezed
class OneProblem with _$OneProblem {
  factory OneProblem({
    required int id,
    required String content,
    required int number,
    required String? explanation,
    required List<OneChoice> choices,
  }) = _OneProblem;

  factory OneProblem.fromJson(Map<String, dynamic> json) =>
      _$OneProblemFromJson(json);
}

@freezed
class OneChoice with _$OneChoice {
  factory OneChoice({
    required int id,
    required int number,
    required String content,
    required bool isAnswer,
  }) = _OneChoice;

  factory OneChoice.fromJson(Map<String, dynamic> json) =>
      _$OneChoiceFromJson(json);
}
