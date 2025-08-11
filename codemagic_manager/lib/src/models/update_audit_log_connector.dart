// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'update_audit_log_connector.g.dart';

@JsonSerializable()
class UpdateAuditLogConnector {
  const UpdateAuditLogConnector({
    required this.awsBucketName,
    required this.awsAccessKeyId,
    required this.awsSecretKey,
  });
  
  factory UpdateAuditLogConnector.fromJson(Map<String, Object?> json) => _$UpdateAuditLogConnectorFromJson(json);
  
  @JsonKey(name: 'aws_bucket_name')
  final String awsBucketName;
  @JsonKey(name: 'aws_access_key_id')
  final String awsAccessKeyId;
  @JsonKey(name: 'aws_secret_key')
  final String awsSecretKey;

  Map<String, Object?> toJson() => _$UpdateAuditLogConnectorToJson(this);
}
