// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'user_schemas_app_schema.g.dart';

@JsonSerializable()
class UserSchemasAppSchema {
  const UserSchemasAppSchema({
    required this.id,
    required this.name,
    required this.lastBuildId,
    this.iconUrl,
  });
  
  factory UserSchemasAppSchema.fromJson(Map<String, Object?> json) => _$UserSchemasAppSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @JsonKey(name: 'last_build_id')
  final dynamic lastBuildId;

  Map<String, Object?> toJson() => _$UserSchemasAppSchemaToJson(this);
}
