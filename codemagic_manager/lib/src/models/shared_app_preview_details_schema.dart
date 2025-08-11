// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'shared_app_preview_details_schema.g.dart';

@JsonSerializable()
class SharedAppPreviewDetailsSchema {
  const SharedAppPreviewDetailsSchema({
    required this.id,
    required this.streamingPublicKey,
    required this.expiresAt,
  });
  
  factory SharedAppPreviewDetailsSchema.fromJson(Map<String, Object?> json) => _$SharedAppPreviewDetailsSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'streaming_public_key')
  final String streamingPublicKey;
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  Map<String, Object?> toJson() => _$SharedAppPreviewDetailsSchemaToJson(this);
}
