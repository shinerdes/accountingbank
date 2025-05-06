// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllProblemImpl _$$AllProblemImplFromJson(Map<String, dynamic> json) =>
    _$AllProblemImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      number: (json['number'] as num).toInt(),
      explanation: json['explanation'] as String?,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => AllChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllProblemImplToJson(_$AllProblemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'number': instance.number,
      'explanation': instance.explanation,
      'choices': instance.choices,
    };

_$AllChoiceImpl _$$AllChoiceImplFromJson(Map<String, dynamic> json) =>
    _$AllChoiceImpl(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      content: json['content'] as String,
      isAnswer: json['isAnswer'] as bool,
    );

Map<String, dynamic> _$$AllChoiceImplToJson(_$AllChoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'content': instance.content,
      'isAnswer': instance.isAnswer,
    };
