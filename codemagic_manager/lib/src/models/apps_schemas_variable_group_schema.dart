// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'apps_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class AppsSchemasVariableGroupSchema {
  const AppsSchemasVariableGroupSchema({
    required this.id,
    required this.name,
  });
  
  factory AppsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$AppsSchemasVariableGroupSchemaFromJson(json);
  
  final String id;
  final String name;

  Map<String, Object?> toJson() => _$AppsSchemasVariableGroupSchemaToJson(this);
}
