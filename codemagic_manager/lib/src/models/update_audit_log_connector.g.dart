// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_audit_log_connector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAuditLogConnector _$UpdateAuditLogConnectorFromJson(Map json) =>
    UpdateAuditLogConnector(
      awsBucketName: json['aws_bucket_name'] as String,
      awsAccessKeyId: json['aws_access_key_id'] as String,
      awsSecretKey: json['aws_secret_key'] as String,
    );

Map<String, dynamic> _$UpdateAuditLogConnectorToJson(
  UpdateAuditLogConnector instance,
) => <String, dynamic>{
  'aws_bucket_name': instance.awsBucketName,
  'aws_access_key_id': instance.awsAccessKeyId,
  'aws_secret_key': instance.awsSecretKey,
};
