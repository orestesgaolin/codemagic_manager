// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_teams_schemas_variable_group_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema
_$ClassicPaginationApiControllersTeamsSchemasVariableGroupSchemaFromJson(
  Map json,
) => ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema(
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => TeamsSchemasVariableGroupSchema.fromJson(
          Map<String, Object?>.from(e as Map),
        ),
      )
      .toList(),
  pageSize: (json['page_size'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic>
_$ClassicPaginationApiControllersTeamsSchemasVariableGroupSchemaToJson(
  ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
