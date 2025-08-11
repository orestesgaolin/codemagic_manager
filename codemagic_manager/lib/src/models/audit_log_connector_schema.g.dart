// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log_connector_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuditLogConnectorSchema _$AuditLogConnectorSchemaFromJson(Map json) =>
    AuditLogConnectorSchema(
      enabled: json['enabled'] as bool,
      awsBucketName: json['aws_bucket_name'] as String?,
      awsAccessKeyId: json['aws_access_key_id'] as String?,
      lastSyncMessage: json['last_sync_message'] as String?,
    );

Map<String, dynamic> _$AuditLogConnectorSchemaToJson(
  AuditLogConnectorSchema instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'aws_bucket_name': instance.awsBucketName,
  'aws_access_key_id': instance.awsAccessKeyId,
  'last_sync_message': instance.lastSyncMessage,
};
