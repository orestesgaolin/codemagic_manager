// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previews_schemas_app_preview_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewsSchemasAppPreviewSchema _$PreviewsSchemasAppPreviewSchemaFromJson(
  Map json,
) => PreviewsSchemasAppPreviewSchema(
  id: json['id'] as String,
  streamingPublicKey: json['streaming_public_key'] as String,
  app: PreviewsSchemasAppSchema.fromJson(
    Map<String, Object?>.from(json['app'] as Map),
  ),
  build: PreviewsSchemasBuildSchema.fromJson(
    Map<String, Object?>.from(json['build'] as Map),
  ),
  artifact: PreviewsSchemasArtifactSchema.fromJson(
    Map<String, Object?>.from(json['artifact'] as Map),
  ),
  createdAt: DateTime.parse(json['created_at'] as String),
  expiresAt: DateTime.parse(json['expires_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$PreviewsSchemasAppPreviewSchemaToJson(
  PreviewsSchemasAppPreviewSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'streaming_public_key': instance.streamingPublicKey,
  'app': instance.app.toJson(),
  'build': instance.build.toJson(),
  'artifact': instance.artifact.toJson(),
  'created_at': instance.createdAt.toIso8601String(),
  'expires_at': instance.expiresAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};
