// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'audit_log_connector_schema.g.dart';

@JsonSerializable()
class AuditLogConnectorSchema {
  const AuditLogConnectorSchema({
    required this.enabled,
    this.awsBucketName,
    this.awsAccessKeyId,
    this.lastSyncMessage,
  });
  
  factory AuditLogConnectorSchema.fromJson(Map<String, Object?> json) => _$AuditLogConnectorSchemaFromJson(json);
  
  final bool enabled;
  @JsonKey(name: 'aws_bucket_name')
  final String? awsBucketName;
  @JsonKey(name: 'aws_access_key_id')
  final String? awsAccessKeyId;
  @JsonKey(name: 'last_sync_message')
  final String? lastSyncMessage;

  Map<String, Object?> toJson() => _$AuditLogConnectorSchemaToJson(this);
}
