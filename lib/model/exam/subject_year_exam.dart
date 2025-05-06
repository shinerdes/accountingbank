import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_year_exam.freezed.dart';
part 'subject_year_exam.g.dart';

@freezed
class SubjectYearExam with _$SubjectYearExam {
  factory SubjectYearExam({
    required List<SubjectYearExamData> data,
  }) = _SubjectYearExam;

  factory SubjectYearExam.fromJson(Map<String, dynamic> json) =>
      _$SubjectYearExamFromJson(json);
}

@freezed
class SubjectYearExamData with _$SubjectYearExamData {
  factory SubjectYearExamData({
    required int id,
    required String name,
    required int year,
  }) = _SubjectYearExamData;

  factory SubjectYearExamData.fromJson(Map<String, dynamic> json) =>
      _$SubjectYearExamDataFromJson(json);
}

// class SubjectYear {
//   SubjectYear({
//     required this.data,
//   });
//   List<SubjectYearData> data;

//   factory SubjectYear.fromJson(Map<String, dynamic> json) =>
//       _$SubjectYearFromJson(json);
//   Map<String, dynamic> toJson() => _$SubjectYearToJson(this);
// }

// @JsonSerializable()
// class SubjectYear {
//   SubjectYear({
//     required this.data,
//   });
//   List<SubjectYearData> data;

//   factory SubjectYear.fromJson(Map<String, dynamic> json) =>
//       _$SubjectYearFromJson(json);
//   Map<String, dynamic> toJson() => _$SubjectYearToJson(this);
// }

// @JsonSerializable()
// class SubjectYearData {
//   SubjectYearData({
//     required this.id,
//     required this.name,
//     required this.year,
//   });

//   int id;
//   String name;
//   int year;

//   factory SubjectYearData.fromJson(Map<String, dynamic> json) =>
//       _$SubjectYearDataFromJson(json);
//   Map<String, dynamic> toJson() => _$SubjectYearDataToJson(this);
// }
