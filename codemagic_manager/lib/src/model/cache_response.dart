import 'package:json_annotation/json_annotation.dart';

import 'cache.dart';

part 'cache_response.g.dart';

@JsonSerializable()
class CacheResponse {
  CacheResponse({
    required this.caches,
  });

  final List<Cache> caches;

  factory CacheResponse.fromJson(Map<String, dynamic> json) =>
      _$CacheResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CacheResponseToJson(this);
}