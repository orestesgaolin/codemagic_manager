// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'dashboards_schemas_build_schema.dart';

part 'cursor_pagination_bson_objectid_object_id_api_controllers_dashboards_schemas_build_schema.g.dart';

@JsonSerializable()
class CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema {
  const CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema({
    required this.data,
    required this.pageSize,
    this.cursor,
  });
  
  factory CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema.fromJson(Map<String, Object?> json) => _$CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchemaFromJson(json);
  
  final List<DashboardsSchemasBuildSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  final dynamic cursor;

  Map<String, Object?> toJson() => _$CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchemaToJson(this);
}
