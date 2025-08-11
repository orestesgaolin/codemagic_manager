// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'team_schema.dart';

part 'classic_pagination_api_controllers_user_schemas_team_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersUserSchemasTeamSchema {
  const ClassicPaginationApiControllersUserSchemasTeamSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersUserSchemasTeamSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersUserSchemasTeamSchemaFromJson(json);
  
  final List<TeamSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersUserSchemasTeamSchemaToJson(this);
}
