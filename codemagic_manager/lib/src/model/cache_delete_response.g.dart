// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CacheDeleteResponse _$CacheDeleteResponseFromJson(Map json) =>
    CacheDeleteResponse(
      caches:
          (json['caches'] as List<dynamic>).map((e) => e as String).toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$CacheDeleteResponseToJson(
        CacheDeleteResponse instance) =>
    <String, dynamic>{
      'caches': instance.caches,
      'message': instance.message,
    };
