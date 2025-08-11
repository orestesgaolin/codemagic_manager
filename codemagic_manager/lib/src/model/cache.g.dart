// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cache _$CacheFromJson(Map json) => Cache(
      id: json['_id'] as String,
      appId: json['appId'] as String,
      lastUsed: DateTime.parse(json['lastUsed'] as String),
      size: (json['size'] as num).toInt(),
      workflowId: json['workflowId'] as String,
    );

Map<String, dynamic> _$CacheToJson(Cache instance) => <String, dynamic>{
      '_id': instance.id,
      'appId': instance.appId,
      'lastUsed': instance.lastUsed.toIso8601String(),
      'size': instance.size,
      'workflowId': instance.workflowId,
    };
