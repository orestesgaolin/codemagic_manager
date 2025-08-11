// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'artifact_type.dart';

part 'dashboards_schemas_artifact_schema.g.dart';

@JsonSerializable()
class DashboardsSchemasArtifactSchema {
  const DashboardsSchemasArtifactSchema({
    required this.name,
    required this.sizeInBytes,
    required this.type,
    required this.shortLivedDownloadUrl,
    this.versionCode,
    this.versionName,
  });
  
  factory DashboardsSchemasArtifactSchema.fromJson(Map<String, Object?> json) => _$DashboardsSchemasArtifactSchemaFromJson(json);
  
  final String name;
  @JsonKey(name: 'size_in_bytes')
  final int sizeInBytes;
  final ArtifactType type;
  @JsonKey(name: 'short_lived_download_url')
  final String shortLivedDownloadUrl;
  @JsonKey(name: 'version_code')
  final String? versionCode;
  @JsonKey(name: 'version_name')
  final String? versionName;

  Map<String, Object?> toJson() => _$DashboardsSchemasArtifactSchemaToJson(this);
}
