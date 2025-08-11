// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'audit_log_connector_schema.dart';

part 'no_pagination_api_controllers_teams_schemas_audit_log_connector_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema {
  const NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchemaFromJson(json);
  
  final AuditLogConnectorSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchemaToJson(this);
}
