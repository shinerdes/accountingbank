// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllQuestionImpl _$$AllQuestionImplFromJson(Map<String, dynamic> json) =>
    _$AllQuestionImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AllquestionData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: AllquestionPageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllQuestionImplToJson(_$AllQuestionImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };

_$AllquestionDataImpl _$$AllquestionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AllquestionDataImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      username: json['username'] as String,
      content: json['content'] as String,
      answerCount: (json['answerCount'] as num).toInt(),
      answeredByAdmin: json['answeredByAdmin'] as bool,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$AllquestionDataImplToJson(
        _$AllquestionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'username': instance.username,
      'content': instance.content,
      'answerCount': instance.answerCount,
      'answeredByAdmin': instance.answeredByAdmin,
      'createdAt': instance.createdAt,
    };

_$AllquestionPageInfoImpl _$$AllquestionPageInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AllquestionPageInfoImpl(
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$$AllquestionPageInfoImplToJson(
        _$AllquestionPageInfoImpl instance) =>
    <String, dynamic>{
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
    };
