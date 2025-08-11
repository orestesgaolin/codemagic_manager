// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'teams_schemas_variable_group_schema.dart';

part 'no_pagination_api_controllers_teams_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersTeamsSchemasVariableGroupSchema {
  const NoPaginationApiControllersTeamsSchemasVariableGroupSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersTeamsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersTeamsSchemasVariableGroupSchemaFromJson(json);
  
  final TeamsSchemasVariableGroupSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersTeamsSchemasVariableGroupSchemaToJson(this);
}
