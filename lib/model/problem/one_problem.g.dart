// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneProblemImpl _$$OneProblemImplFromJson(Map<String, dynamic> json) =>
    _$OneProblemImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      number: (json['number'] as num).toInt(),
      explanation: json['explanation'] as String?,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OneChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OneProblemImplToJson(_$OneProblemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'number': instance.number,
      'explanation': instance.explanation,
      'choices': instance.choices,
    };

_$OneChoiceImpl _$$OneChoiceImplFromJson(Map<String, dynamic> json) =>
    _$OneChoiceImpl(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      content: json['content'] as String,
      isAnswer: json['isAnswer'] as bool,
    );

Map<String, dynamic> _$$OneChoiceImplToJson(_$OneChoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'content': instance.content,
      'isAnswer': instance.isAnswer,
    };
