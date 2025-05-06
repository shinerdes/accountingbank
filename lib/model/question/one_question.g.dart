// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneQuestionImpl _$$OneQuestionImplFromJson(Map<String, dynamic> json) =>
    _$OneQuestionImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      username: json['username'] as String,
      content: json['content'] as String,
      answerCount: (json['answerCount'] as num).toInt(),
      answeredByAdmin: json['answeredByAdmin'] as bool,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$OneQuestionImplToJson(_$OneQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'username': instance.username,
      'content': instance.content,
      'answerCount': instance.answerCount,
      'answeredByAdmin': instance.answeredByAdmin,
      'createdAt': instance.createdAt,
    };
