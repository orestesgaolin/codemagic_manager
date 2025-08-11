// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'api_key_schema.dart';

part 'no_pagination_api_controllers_user_schemas_api_key_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersUserSchemasApiKeySchema {
  const NoPaginationApiControllersUserSchemasApiKeySchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersUserSchemasApiKeySchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersUserSchemasApiKeySchemaFromJson(json);
  
  final ApiKeySchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersUserSchemasApiKeySchemaToJson(this);
}
