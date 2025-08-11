// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'teams_schemas_app_schema.g.dart';

@JsonSerializable()
class TeamsSchemasAppSchema {
  const TeamsSchemasAppSchema({
    required this.id,
    required this.name,
    this.iconUrl,
    this.lastBuildId,
  });
  
  factory TeamsSchemasAppSchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasAppSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @JsonKey(name: 'last_build_id')
  final dynamic lastBuildId;

  Map<String, Object?> toJson() => _$TeamsSchemasAppSchemaToJson(this);
}
