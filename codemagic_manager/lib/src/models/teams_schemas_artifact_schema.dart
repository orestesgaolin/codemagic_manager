// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'teams_schemas_artifact_schema.g.dart';

@JsonSerializable()
class TeamsSchemasArtifactSchema {
  const TeamsSchemasArtifactSchema({
    required this.name,
    required this.path,
    this.versionCode,
    this.versionName,
  });
  
  factory TeamsSchemasArtifactSchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasArtifactSchemaFromJson(json);
  
  final String name;
  final String path;
  @JsonKey(name: 'version_code')
  final String? versionCode;
  @JsonKey(name: 'version_name')
  final String? versionName;

  Map<String, Object?> toJson() => _$TeamsSchemasArtifactSchemaToJson(this);
}
