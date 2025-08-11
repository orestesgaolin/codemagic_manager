// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'apps_schemas_tester_group_schema.dart';

part 'no_pagination_api_controllers_apps_schemas_tester_group_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersAppsSchemasTesterGroupSchema {
  const NoPaginationApiControllersAppsSchemasTesterGroupSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersAppsSchemasTesterGroupSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersAppsSchemasTesterGroupSchemaFromJson(json);
  
  final AppsSchemasTesterGroupSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersAppsSchemasTesterGroupSchemaToJson(this);
}
