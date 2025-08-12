import 'package:json_annotation/json_annotation.dart';

part 'cache.g.dart';

@JsonSerializable()
class Cache {
  Cache({
    required this.id,
    required this.appId,
    required this.lastUsed,
    required this.size,
    required this.workflowId,
  });

  @JsonKey(name: '_id')
  final String id;
  final String appId;
  final DateTime lastUsed;
  final int size;
  final String workflowId;

  factory Cache.fromJson(Map<String, dynamic> json) => _$CacheFromJson(json);

  Map<String, dynamic> toJson() => _$CacheToJson(this);
}