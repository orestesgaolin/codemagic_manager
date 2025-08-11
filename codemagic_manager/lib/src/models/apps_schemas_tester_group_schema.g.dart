// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_schemas_tester_group_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppsSchemasTesterGroupSchema _$AppsSchemasTesterGroupSchemaFromJson(Map json) =>
    AppsSchemasTesterGroupSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$AppsSchemasTesterGroupSchemaToJson(
  AppsSchemasTesterGroupSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'created_at': instance.createdAt.toIso8601String(),
};
