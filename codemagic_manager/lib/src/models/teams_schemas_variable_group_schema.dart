// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'teams_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class TeamsSchemasVariableGroupSchema {
  const TeamsSchemasVariableGroupSchema({
    required this.id,
    required this.name,
  });
  
  factory TeamsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasVariableGroupSchemaFromJson(json);
  
  final String id;
  final String name;

  Map<String, Object?> toJson() => _$TeamsSchemasVariableGroupSchemaToJson(this);
}
