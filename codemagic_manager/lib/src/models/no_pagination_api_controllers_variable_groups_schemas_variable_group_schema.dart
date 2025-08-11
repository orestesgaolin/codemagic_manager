// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'variable_groups_schemas_variable_group_schema.dart';

part 'no_pagination_api_controllers_variable_groups_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema {
  const NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchemaFromJson(json);
  
  final VariableGroupsSchemasVariableGroupSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchemaToJson(this);
}
