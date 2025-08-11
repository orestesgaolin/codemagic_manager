// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'previews_schemas_app_schema.dart';
import 'previews_schemas_artifact_schema.dart';
import 'previews_schemas_build_schema.dart';

part 'previews_schemas_app_preview_schema.g.dart';

@JsonSerializable()
class PreviewsSchemasAppPreviewSchema {
  const PreviewsSchemasAppPreviewSchema({
    required this.id,
    required this.streamingPublicKey,
    required this.app,
    required this.build,
    required this.artifact,
    required this.createdAt,
    required this.expiresAt,
    this.deletedAt,
  });
  
  factory PreviewsSchemasAppPreviewSchema.fromJson(Map<String, Object?> json) => _$PreviewsSchemasAppPreviewSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'streaming_public_key')
  final String streamingPublicKey;
  final PreviewsSchemasAppSchema app;
  final PreviewsSchemasBuildSchema build;
  final PreviewsSchemasArtifactSchema artifact;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  Map<String, Object?> toJson() => _$PreviewsSchemasAppPreviewSchemaToJson(this);
}
