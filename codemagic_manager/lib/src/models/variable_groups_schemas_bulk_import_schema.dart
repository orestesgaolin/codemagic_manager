// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'new_environment_variable_schema.dart';

part 'variable_groups_schemas_bulk_import_schema.g.dart';

@JsonSerializable()
class VariableGroupsSchemasBulkImportSchema {
  const VariableGroupsSchemasBulkImportSchema({
    required this.secure,
    required this.variables,
  });
  
  factory VariableGroupsSchemasBulkImportSchema.fromJson(Map<String, Object?> json) => _$VariableGroupsSchemasBulkImportSchemaFromJson(json);
  
  final bool secure;
  final List<NewEnvironmentVariableSchema> variables;

  Map<String, Object?> toJson() => _$VariableGroupsSchemasBulkImportSchemaToJson(this);
}
