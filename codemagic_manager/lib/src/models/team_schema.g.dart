// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamSchema _$TeamSchemaFromJson(Map json) => TeamSchema(
  id: json['id'] as String,
  name: json['name'] as String,
  iconUrl: json['icon_url'] as String?,
);

Map<String, dynamic> _$TeamSchemaToJson(TeamSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon_url': instance.iconUrl,
    };
