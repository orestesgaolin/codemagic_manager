// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CacheResponse _$CacheResponseFromJson(Map json) => CacheResponse(
      caches: (json['caches'] as List<dynamic>)
          .map((e) => Cache.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$CacheResponseToJson(CacheResponse instance) =>
    <String, dynamic>{
      'caches': instance.caches.map((e) => e.toJson()).toList(),
    };
