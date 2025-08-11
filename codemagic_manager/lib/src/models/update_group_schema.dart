// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'variable_groups_schemas_advanced_security_schema.dart';

part 'update_group_schema.g.dart';

@JsonSerializable()
class UpdateGroupSchema {
  const UpdateGroupSchema({
    this.name,
    this.advancedSecurity,
  });
  
  factory UpdateGroupSchema.fromJson(Map<String, Object?> json) => _$UpdateGroupSchemaFromJson(json);
  
  final String? name;

  /// Only for team's variable groups
  @JsonKey(name: 'advanced_security')
  final VariableGroupsSchemasAdvancedSecuritySchema? advancedSecurity;

  Map<String, Object?> toJson() => _$UpdateGroupSchemaToJson(this);
}
