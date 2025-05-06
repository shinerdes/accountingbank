// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllSubjectImpl _$$AllSubjectImplFromJson(Map<String, dynamic> json) =>
    _$AllSubjectImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => AllsubjectData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo:
          AllsubjectPageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllSubjectImplToJson(_$AllSubjectImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };

_$AllsubjectDataImpl _$$AllsubjectDataImplFromJson(Map<String, dynamic> json) =>
    _$AllsubjectDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AllsubjectDataImplToJson(
        _$AllsubjectDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$AllsubjectPageInfoImpl _$$AllsubjectPageInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AllsubjectPageInfoImpl(
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$$AllsubjectPageInfoImplToJson(
        _$AllsubjectPageInfoImpl instance) =>
    <String, dynamic>{
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
    };
