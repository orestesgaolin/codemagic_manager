// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_apps_schemas_variable_group_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersAppsSchemasVariableGroupSchema
_$ClassicPaginationApiControllersAppsSchemasVariableGroupSchemaFromJson(
  Map json,
) => ClassicPaginationApiControllersAppsSchemasVariableGroupSchema(
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => AppsSchemasVariableGroupSchema.fromJson(
          Map<String, Object?>.from(e as Map),
        ),
      )
      .toList(),
  pageSize: (json['page_size'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic>
_$ClassicPaginationApiControllersAppsSchemasVariableGroupSchemaToJson(
  ClassicPaginationApiControllersAppsSchemasVariableGroupSchema instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
