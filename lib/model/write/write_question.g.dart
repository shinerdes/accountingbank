// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteQuestionImpl _$$WriteQuestionImplFromJson(Map<String, dynamic> json) =>
    _$WriteQuestionImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$WriteQuestionImplToJson(_$WriteQuestionImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'title': instance.title,
      'content': instance.content,
    };
