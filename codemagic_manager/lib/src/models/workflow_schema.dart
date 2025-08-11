// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'workflow_schema.g.dart';

@JsonSerializable()
class WorkflowSchema {
  const WorkflowSchema({
    required this.id,
    this.name,
  });
  
  factory WorkflowSchema.fromJson(Map<String, Object?> json) => _$WorkflowSchemaFromJson(json);
  
  final String id;
  final String? name;

  Map<String, Object?> toJson() => _$WorkflowSchemaToJson(this);
}
