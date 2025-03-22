// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_year_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectYearExamImpl _$$SubjectYearExamImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectYearExamImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => SubjectYearExamData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectYearExamImplToJson(
        _$SubjectYearExamImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SubjectYearExamDataImpl _$$SubjectYearExamDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectYearExamDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$$SubjectYearExamDataImplToJson(
        _$SubjectYearExamDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
    };
