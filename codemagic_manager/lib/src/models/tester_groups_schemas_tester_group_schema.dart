// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tester_groups_schemas_tester_group_schema.g.dart';

@JsonSerializable()
class TesterGroupsSchemasTesterGroupSchema {
  const TesterGroupsSchemasTesterGroupSchema({
    required this.id,
    required this.name,
    required this.createdAt,
  });
  
  factory TesterGroupsSchemasTesterGroupSchema.fromJson(Map<String, Object?> json) => _$TesterGroupsSchemasTesterGroupSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  Map<String, Object?> toJson() => _$TesterGroupsSchemasTesterGroupSchemaToJson(this);
}
