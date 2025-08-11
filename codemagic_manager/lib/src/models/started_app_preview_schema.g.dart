// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'started_app_preview_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartedAppPreviewSchema _$StartedAppPreviewSchemaFromJson(Map json) =>
    StartedAppPreviewSchema(
      id: json['id'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$StartedAppPreviewSchemaToJson(
  StartedAppPreviewSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'expires_at': instance.expiresAt.toIso8601String(),
};
