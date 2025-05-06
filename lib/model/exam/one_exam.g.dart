// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneExamImpl _$$OneExamImplFromJson(Map<String, dynamic> json) =>
    _$OneExamImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$$OneExamImplToJson(_$OneExamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
    };
