// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schemas_app_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSchemasAppSchema _$UserSchemasAppSchemaFromJson(Map json) =>
    UserSchemasAppSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      lastBuildId: json['last_build_id'],
      iconUrl: json['icon_url'] as String?,
    );

Map<String, dynamic> _$UserSchemasAppSchemaToJson(
  UserSchemasAppSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon_url': instance.iconUrl,
  'last_build_id': instance.lastBuildId,
};
