// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'apps_schemas_tester_group_schema.g.dart';

@JsonSerializable()
class AppsSchemasTesterGroupSchema {
  const AppsSchemasTesterGroupSchema({
    required this.id,
    required this.name,
    required this.createdAt,
  });
  
  factory AppsSchemasTesterGroupSchema.fromJson(Map<String, Object?> json) => _$AppsSchemasTesterGroupSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  Map<String, Object?> toJson() => _$AppsSchemasTesterGroupSchemaToJson(this);
}
