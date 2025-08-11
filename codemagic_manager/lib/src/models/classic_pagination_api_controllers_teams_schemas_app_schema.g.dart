// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_teams_schemas_app_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersTeamsSchemasAppSchema
_$ClassicPaginationApiControllersTeamsSchemasAppSchemaFromJson(Map json) =>
    ClassicPaginationApiControllersTeamsSchemasAppSchema(
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => TeamsSchemasAppSchema.fromJson(
              Map<String, Object?>.from(e as Map),
            ),
          )
          .toList(),
      pageSize: (json['page_size'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic>
_$ClassicPaginationApiControllersTeamsSchemasAppSchemaToJson(
  ClassicPaginationApiControllersTeamsSchemasAppSchema instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
