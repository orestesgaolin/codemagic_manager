// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_schemas_artifact_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsSchemasArtifactSchema _$TeamsSchemasArtifactSchemaFromJson(Map json) =>
    TeamsSchemasArtifactSchema(
      name: json['name'] as String,
      path: json['path'] as String,
      versionCode: json['version_code'] as String?,
      versionName: json['version_name'] as String?,
    );

Map<String, dynamic> _$TeamsSchemasArtifactSchemaToJson(
  TeamsSchemasArtifactSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'path': instance.path,
  'version_code': instance.versionCode,
  'version_name': instance.versionName,
};
