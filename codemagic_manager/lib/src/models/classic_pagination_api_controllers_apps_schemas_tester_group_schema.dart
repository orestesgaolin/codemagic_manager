// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'apps_schemas_tester_group_schema.dart';

part 'classic_pagination_api_controllers_apps_schemas_tester_group_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersAppsSchemasTesterGroupSchema {
  const ClassicPaginationApiControllersAppsSchemasTesterGroupSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersAppsSchemasTesterGroupSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersAppsSchemasTesterGroupSchemaFromJson(json);
  
  final List<AppsSchemasTesterGroupSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersAppsSchemasTesterGroupSchemaToJson(this);
}
