// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'app_preview_application_schema.dart';
import 'teams_schemas_artifact_schema.dart';
import 'teams_schemas_build_schema.dart';

part 'teams_schemas_app_preview_schema.g.dart';

@JsonSerializable()
class TeamsSchemasAppPreviewSchema {
  const TeamsSchemasAppPreviewSchema({
    required this.id,
    required this.streamingPublicKey,
    required this.app,
    required this.build,
    required this.artifact,
    required this.createdAt,
    required this.expiresAt,
    this.deletedAt,
  });
  
  factory TeamsSchemasAppPreviewSchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasAppPreviewSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'streaming_public_key')
  final String streamingPublicKey;
  final AppPreviewApplicationSchema app;
  final TeamsSchemasBuildSchema build;
  final TeamsSchemasArtifactSchema artifact;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  Map<String, Object?> toJson() => _$TeamsSchemasAppPreviewSchemaToJson(this);
}
