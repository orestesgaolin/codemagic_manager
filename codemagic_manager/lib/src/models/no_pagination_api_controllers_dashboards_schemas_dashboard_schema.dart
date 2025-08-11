// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'dashboard_schema.dart';

part 'no_pagination_api_controllers_dashboards_schemas_dashboard_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersDashboardsSchemasDashboardSchema {
  const NoPaginationApiControllersDashboardsSchemasDashboardSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersDashboardsSchemasDashboardSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersDashboardsSchemasDashboardSchemaFromJson(json);
  
  final DashboardSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersDashboardsSchemasDashboardSchemaToJson(this);
}
