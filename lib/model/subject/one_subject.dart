import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_subject.freezed.dart';
part 'one_subject.g.dart';

@freezed
class OneSubject with _$OneSubject {
  factory OneSubject({
    required int id,
    required String name,
  }) = _OneSubject;

  factory OneSubject.fromJson(Map<String, dynamic> json) =>
      _$OneSubjectFromJson(json);
}

// @JsonSerializable()
// class OnesubjectData {
//   OnesubjectData({
//     required this.id,
//     required this.name,
//   });

//   int id;
//   String name;

//   factory OnesubjectData.fromJson(Map<String, dynamic> json) =>
//       _$OnesubjectDataFromJson(json);
//   Map<String, dynamic> toJson() => _$OnesubjectDataToJson(this);
// }
