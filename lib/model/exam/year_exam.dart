import 'package:freezed_annotation/freezed_annotation.dart';

part 'year_exam.freezed.dart';
part 'year_exam.g.dart';

@freezed
class YearExam with _$YearExam {
  factory YearExam({
    required List<int> data,
  }) = _YearExam;

  factory YearExam.fromJson(Map<String, dynamic> json) =>
      _$YearExamFromJson(json);
}

// @JsonSerializable()
// class Year {
//   Year({
//     required this.data,
//   });

//   List<int> data;

//   factory Year.fromJson(Map<String, dynamic> json) => _$YearFromJson(json);
//   Map<String, dynamic> toJson() => _$YearToJson(this);
// }
