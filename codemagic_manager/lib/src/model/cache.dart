import 'package:json_annotation/json_annotation.dart';

part 'cache.g.dart';

/// Cache model for Codemagic cache storage
@JsonSerializable()
class Cache {
  Cache({
    required this.id,
    required this.label,
    required this.size,
    required this.usageCount,
    required this.createdAt,
    required this.lastUsedAt,
    this.description,
  });

  @JsonKey(name: '_id')
  final String id;
  final String label;
  final int size;
  final int usageCount;
  final DateTime createdAt;
  final DateTime lastUsedAt;
  final String? description;

  factory Cache.fromJson(Map<String, dynamic> json) => _$CacheFromJson(json);

  Map<String, dynamic> toJson() => _$CacheToJson(this);
}

/// Wrapper class for caches list response
@JsonSerializable()
class Caches {
  Caches({
    required this.caches,
  });

  @JsonKey(defaultValue: [])
  final List<Cache> caches;

  factory Caches.fromJson(Map<String, dynamic> json) => _$CachesFromJson(json);

  Map<String, dynamic> toJson() => _$CachesToJson(this);
}