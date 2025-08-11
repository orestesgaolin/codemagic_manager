// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'variable_groups_schemas_advanced_security_schema.dart';

part 'variable_groups_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class VariableGroupsSchemasVariableGroupSchema {
  const VariableGroupsSchemasVariableGroupSchema({
    required this.id,
    required this.name,
    this.advancedSecurity,
  });
  
  factory VariableGroupsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$VariableGroupsSchemasVariableGroupSchemaFromJson(json);
  
  final String id;
  final String name;

  /// Only for team's variable groups
  @JsonKey(name: 'advanced_security')
  final VariableGroupsSchemasAdvancedSecuritySchema? advancedSecurity;

  Map<String, Object?> toJson() => _$VariableGroupsSchemasVariableGroupSchemaToJson(this);
}
