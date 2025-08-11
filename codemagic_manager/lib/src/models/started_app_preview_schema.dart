// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'started_app_preview_schema.g.dart';

@JsonSerializable()
class StartedAppPreviewSchema {
  const StartedAppPreviewSchema({
    required this.id,
    required this.expiresAt,
  });
  
  factory StartedAppPreviewSchema.fromJson(Map<String, Object?> json) => _$StartedAppPreviewSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  Map<String, Object?> toJson() => _$StartedAppPreviewSchemaToJson(this);
}
