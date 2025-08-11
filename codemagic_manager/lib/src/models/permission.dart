// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum Permission {
  @JsonValue('can_read_apps')
  canReadApps('can_read_apps'),
  @JsonValue('can_read_audit_log')
  canReadAuditLog('can_read_audit_log'),
  @JsonValue('can_read_audit_log_connector')
  canReadAuditLogConnector('can_read_audit_log_connector'),
  @JsonValue('can_update_audit_log_connector')
  canUpdateAuditLogConnector('can_update_audit_log_connector'),
  @JsonValue('can_delete_audit_log_connector')
  canDeleteAuditLogConnector('can_delete_audit_log_connector'),
  @JsonValue('can_update_team')
  canUpdateTeam('can_update_team'),
  @JsonValue('can_delete_team')
  canDeleteTeam('can_delete_team'),
  @JsonValue('can_update_subscription')
  canUpdateSubscription('can_update_subscription'),
  @JsonValue('can_start_app_preview')
  canStartAppPreview('can_start_app_preview'),
  @JsonValue('can_read_app_preview')
  canReadAppPreview('can_read_app_preview'),
  @JsonValue('can_create_tester_groups')
  canCreateTesterGroups('can_create_tester_groups'),
  @JsonValue('can_read_tester_groups')
  canReadTesterGroups('can_read_tester_groups'),
  @JsonValue('can_update_tester_groups')
  canUpdateTesterGroups('can_update_tester_groups'),
  @JsonValue('can_delete_tester_groups')
  canDeleteTesterGroups('can_delete_tester_groups'),
  @JsonValue('can_create_tester_group_contacts')
  canCreateTesterGroupContacts('can_create_tester_group_contacts'),
  @JsonValue('can_read_tester_group_contacts')
  canReadTesterGroupContacts('can_read_tester_group_contacts'),
  @JsonValue('can_delete_tester_group_contacts')
  canDeleteTesterGroupContacts('can_delete_tester_group_contacts'),
  @JsonValue('can_create_app_vars')
  canCreateAppVars('can_create_app_vars'),
  @JsonValue('can_create_team_vars')
  canCreateTeamVars('can_create_team_vars'),
  @JsonValue('can_create_vars')
  canCreateVars('can_create_vars'),
  @JsonValue('can_read_app_vars')
  canReadAppVars('can_read_app_vars'),
  @JsonValue('can_read_team_vars')
  canReadTeamVars('can_read_team_vars'),
  @JsonValue('can_read_vars')
  canReadVars('can_read_vars'),
  @JsonValue('can_update_vars')
  canUpdateVars('can_update_vars'),
  @JsonValue('can_delete_vars')
  canDeleteVars('can_delete_vars'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Permission(this.json);

  factory Permission.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;

  @override
  String toString() => json ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<Permission> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
