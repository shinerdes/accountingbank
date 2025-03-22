// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneAnswerImpl _$$OneAnswerImplFromJson(Map<String, dynamic> json) =>
    _$OneAnswerImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$OneAnswerImplToJson(_$OneAnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
