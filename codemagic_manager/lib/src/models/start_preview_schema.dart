// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'start_preview_schema.g.dart';

@JsonSerializable()
class StartPreviewSchema {
  const StartPreviewSchema({
    required this.artifactPath,
  });
  
  factory StartPreviewSchema.fromJson(Map<String, Object?> json) => _$StartPreviewSchemaFromJson(json);
  
  @JsonKey(name: 'artifact_path')
  final String artifactPath;

  Map<String, Object?> toJson() => _$StartPreviewSchemaToJson(this);
}
