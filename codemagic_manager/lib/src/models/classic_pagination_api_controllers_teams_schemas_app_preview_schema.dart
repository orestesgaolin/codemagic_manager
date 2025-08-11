// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'teams_schemas_app_preview_schema.dart';

part 'classic_pagination_api_controllers_teams_schemas_app_preview_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema {
  const ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersTeamsSchemasAppPreviewSchemaFromJson(json);
  
  final List<TeamsSchemasAppPreviewSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersTeamsSchemasAppPreviewSchemaToJson(this);
}
