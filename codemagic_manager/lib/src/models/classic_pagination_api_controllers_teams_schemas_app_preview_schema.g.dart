// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_teams_schemas_app_preview_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema
_$ClassicPaginationApiControllersTeamsSchemasAppPreviewSchemaFromJson(
  Map json,
) => ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema(
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => TeamsSchemasAppPreviewSchema.fromJson(
          Map<String, Object?>.from(e as Map),
        ),
      )
      .toList(),
  pageSize: (json['page_size'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic>
_$ClassicPaginationApiControllersTeamsSchemasAppPreviewSchemaToJson(
  ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
