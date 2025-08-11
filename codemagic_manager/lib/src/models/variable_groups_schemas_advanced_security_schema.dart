// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'variable_groups_schemas_advanced_security_schema.g.dart';

@JsonSerializable()
class VariableGroupsSchemasAdvancedSecuritySchema {
  const VariableGroupsSchemasAdvancedSecuritySchema({
    required this.enabled,
    required this.selectedApps,
  });
  
  factory VariableGroupsSchemasAdvancedSecuritySchema.fromJson(Map<String, Object?> json) => _$VariableGroupsSchemasAdvancedSecuritySchemaFromJson(json);
  
  final bool enabled;

  /// IDs of applications that can access the group's variables. Empty if advanced security is disabled
  @JsonKey(name: 'selected_apps')
  final List<dynamic> selectedApps;

  Map<String, Object?> toJson() => _$VariableGroupsSchemasAdvancedSecuritySchemaToJson(this);
}
