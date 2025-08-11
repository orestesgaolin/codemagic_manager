// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'environment_variable_schema.dart';

part 'no_pagination_api_controllers_variable_groups_schemas_environment_variable_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema {
  const NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchemaFromJson(json);
  
  final EnvironmentVariableSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchemaToJson(this);
}
