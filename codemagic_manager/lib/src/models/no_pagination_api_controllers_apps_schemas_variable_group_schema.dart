// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'apps_schemas_variable_group_schema.dart';

part 'no_pagination_api_controllers_apps_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersAppsSchemasVariableGroupSchema {
  const NoPaginationApiControllersAppsSchemasVariableGroupSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersAppsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersAppsSchemasVariableGroupSchemaFromJson(json);
  
  final AppsSchemasVariableGroupSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersAppsSchemasVariableGroupSchemaToJson(this);
}
