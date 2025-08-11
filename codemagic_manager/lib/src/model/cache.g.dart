// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cache _$CacheFromJson(Map json) => Cache(
      id: json['_id'] as String,
      label: json['label'] as String,
      size: (json['size'] as num).toInt(),
      usageCount: (json['usageCount'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastUsedAt: DateTime.parse(json['lastUsedAt'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CacheToJson(Cache instance) => <String, dynamic>{
      '_id': instance.id,
      'label': instance.label,
      'size': instance.size,
      'usageCount': instance.usageCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastUsedAt': instance.lastUsedAt.toIso8601String(),
      'description': instance.description,
    };

Caches _$CachesFromJson(Map json) => Caches(
      caches: (json['caches'] as List<dynamic>?)
              ?.map((e) => Cache.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CachesToJson(Caches instance) => <String, dynamic>{
      'caches': instance.caches.map((e) => e.toJson()).toList(),
    };
