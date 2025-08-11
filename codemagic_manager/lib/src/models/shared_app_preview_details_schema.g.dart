// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_app_preview_details_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharedAppPreviewDetailsSchema _$SharedAppPreviewDetailsSchemaFromJson(
  Map json,
) => SharedAppPreviewDetailsSchema(
  id: json['id'] as String,
  streamingPublicKey: json['streaming_public_key'] as String,
  expiresAt: DateTime.parse(json['expires_at'] as String),
);

Map<String, dynamic> _$SharedAppPreviewDetailsSchemaToJson(
  SharedAppPreviewDetailsSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'streaming_public_key': instance.streamingPublicKey,
  'expires_at': instance.expiresAt.toIso8601String(),
};
