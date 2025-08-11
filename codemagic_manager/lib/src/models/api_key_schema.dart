// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'api_key_schema.g.dart';

@JsonSerializable()
class ApiKeySchema {
  const ApiKeySchema({
    required this.apiKey,
  });
  
  factory ApiKeySchema.fromJson(Map<String, Object?> json) => _$ApiKeySchemaFromJson(json);
  
  @JsonKey(name: 'api_key')
  final String apiKey;

  Map<String, Object?> toJson() => _$ApiKeySchemaToJson(this);
}
