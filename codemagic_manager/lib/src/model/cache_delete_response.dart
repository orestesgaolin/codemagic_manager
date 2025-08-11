import 'package:json_annotation/json_annotation.dart';

part 'cache_delete_response.g.dart';

@JsonSerializable()
class CacheDeleteResponse {
  CacheDeleteResponse({
    required this.caches,
    required this.message,
  });

  final List<String> caches;
  final String message;

  factory CacheDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$CacheDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CacheDeleteResponseToJson(this);
}