// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_schemas_app_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsSchemasAppSchema _$TeamsSchemasAppSchemaFromJson(Map json) =>
    TeamsSchemasAppSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String?,
      lastBuildId: json['last_build_id'],
    );

Map<String, dynamic> _$TeamsSchemasAppSchemaToJson(
  TeamsSchemasAppSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon_url': instance.iconUrl,
  'last_build_id': instance.lastBuildId,
};
