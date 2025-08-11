// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'teams_schemas_advanced_security_schema.dart';

part 'teams_schemas_create_variable_group.g.dart';

@JsonSerializable()
class TeamsSchemasCreateVariableGroup {
  const TeamsSchemasCreateVariableGroup({
    required this.name,
    required this.advancedSecurity,
  });
  
  factory TeamsSchemasCreateVariableGroup.fromJson(Map<String, Object?> json) => _$TeamsSchemasCreateVariableGroupFromJson(json);
  
  final String name;
  @JsonKey(name: 'advanced_security')
  final TeamsSchemasAdvancedSecuritySchema advancedSecurity;

  Map<String, Object?> toJson() => _$TeamsSchemasCreateVariableGroupToJson(this);
}
