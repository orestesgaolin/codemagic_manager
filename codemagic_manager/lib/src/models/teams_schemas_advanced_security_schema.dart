// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'teams_schemas_advanced_security_schema.g.dart';

@JsonSerializable()
class TeamsSchemasAdvancedSecuritySchema {
  const TeamsSchemasAdvancedSecuritySchema({
    required this.enabled,
    required this.selectedApps,
  });
  
  factory TeamsSchemasAdvancedSecuritySchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasAdvancedSecuritySchemaFromJson(json);
  
  final bool enabled;

  /// IDs of applications that can access the group's variables. Empty if advanced security is disabled
  @JsonKey(name: 'selected_apps')
  final List<dynamic> selectedApps;

  Map<String, Object?> toJson() => _$TeamsSchemasAdvancedSecuritySchemaToJson(this);
}
