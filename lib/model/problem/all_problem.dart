import 'package:freezed_annotation/freezed_annotation.dart';

part "all_problem.freezed.dart";
part 'all_problem.g.dart';

@freezed
class AllProblem with _$AllProblem {
  factory AllProblem({
    required int id,
    required String content,
    required int number,
    required String? explanation,
    required List<AllChoice> choices,
  }) = _AllProblem;

  factory AllProblem.fromJson(Map<String, dynamic> json) =>
      _$AllProblemFromJson(json);
}

@freezed
class AllChoice with _$AllChoice {
  factory AllChoice({
    required int id,
    required int number,
    required String content,
    required bool isAnswer,
  }) = _AllChoice;

  factory AllChoice.fromJson(Map<String, dynamic> json) =>
      _$AllChoiceFromJson(json);
}
