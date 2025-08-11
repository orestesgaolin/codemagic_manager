// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tester_groups_schemas_tester_group_schema.dart';

part 'no_pagination_api_controllers_tester_groups_schemas_tester_group_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema {
  const NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchemaFromJson(json);
  
  final TesterGroupsSchemasTesterGroupSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchemaToJson(this);
}
