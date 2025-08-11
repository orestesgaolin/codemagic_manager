// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'teams_schemas_app_schema.dart';

part 'classic_pagination_api_controllers_teams_schemas_app_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersTeamsSchemasAppSchema {
  const ClassicPaginationApiControllersTeamsSchemasAppSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersTeamsSchemasAppSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersTeamsSchemasAppSchemaFromJson(json);
  
  final List<TeamsSchemasAppSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersTeamsSchemasAppSchemaToJson(this);
}
