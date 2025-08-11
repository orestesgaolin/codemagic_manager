// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tester_groups_schemas_tester_group_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TesterGroupsSchemasTesterGroupSchema
_$TesterGroupsSchemasTesterGroupSchemaFromJson(Map json) =>
    TesterGroupsSchemasTesterGroupSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$TesterGroupsSchemasTesterGroupSchemaToJson(
  TesterGroupsSchemasTesterGroupSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'created_at': instance.createdAt.toIso8601String(),
};
