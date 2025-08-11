// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboards_schemas_artifact_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardsSchemasArtifactSchema _$DashboardsSchemasArtifactSchemaFromJson(
  Map json,
) => DashboardsSchemasArtifactSchema(
  name: json['name'] as String,
  sizeInBytes: (json['size_in_bytes'] as num).toInt(),
  type: ArtifactType.fromJson(json['type'] as String),
  shortLivedDownloadUrl: json['short_lived_download_url'] as String,
  versionCode: json['version_code'] as String?,
  versionName: json['version_name'] as String?,
);

Map<String, dynamic> _$DashboardsSchemasArtifactSchemaToJson(
  DashboardsSchemasArtifactSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'size_in_bytes': instance.sizeInBytes,
  'type': instance.type.toJson(),
  'short_lived_download_url': instance.shortLivedDownloadUrl,
  'version_code': instance.versionCode,
  'version_name': instance.versionName,
};
