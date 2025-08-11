// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor_pagination_bson_objectid_object_id_api_controllers_dashboards_schemas_build_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema
_$CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchemaFromJson(
  Map json,
) =>
    CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema(
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => DashboardsSchemasBuildSchema.fromJson(
              Map<String, Object?>.from(e as Map),
            ),
          )
          .toList(),
      pageSize: (json['page_size'] as num).toInt(),
      cursor: json['cursor'],
    );

Map<String, dynamic>
_$CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchemaToJson(
  CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema
  instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'cursor': instance.cursor,
};
