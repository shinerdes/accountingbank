// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllAnswerImpl _$$AllAnswerImplFromJson(Map<String, dynamic> json) =>
    _$AllAnswerImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AllanswerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo:
          AllanswerPageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllAnswerImplToJson(_$AllAnswerImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };

_$AllanswerDataImpl _$$AllanswerDataImplFromJson(Map<String, dynamic> json) =>
    _$AllanswerDataImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      content: json['content'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$AllanswerDataImplToJson(_$AllanswerDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };

_$AllanswerPageInfoImpl _$$AllanswerPageInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AllanswerPageInfoImpl(
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$$AllanswerPageInfoImplToJson(
        _$AllanswerPageInfoImpl instance) =>
    <String, dynamic>{
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
    };
