// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'environment_variable_schema.dart';

part 'classic_pagination_api_controllers_variable_groups_schemas_environment_variable_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema {
  const ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchemaFromJson(json);
  
  final List<EnvironmentVariableSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchemaToJson(this);
}
