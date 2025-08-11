// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'apps_schemas_variable_group_schema.dart';

part 'classic_pagination_api_controllers_apps_schemas_variable_group_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersAppsSchemasVariableGroupSchema {
  const ClassicPaginationApiControllersAppsSchemasVariableGroupSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersAppsSchemasVariableGroupSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersAppsSchemasVariableGroupSchemaFromJson(json);
  
  final List<AppsSchemasVariableGroupSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersAppsSchemasVariableGroupSchemaToJson(this);
}
