// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_variable_groups_schemas_environment_variable_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
_$ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchemaFromJson(
  Map json,
) =>
    ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema(
      data: (json['data'] as List<dynamic>)
          .map(
            (e) => EnvironmentVariableSchema.fromJson(
              Map<String, Object?>.from(e as Map),
            ),
          )
          .toList(),
      pageSize: (json['page_size'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic>
_$ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchemaToJson(
  ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
  instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
