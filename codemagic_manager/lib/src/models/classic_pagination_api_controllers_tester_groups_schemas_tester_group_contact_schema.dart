// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'tester_group_contact_schema.dart';

part 'classic_pagination_api_controllers_tester_groups_schemas_tester_group_contact_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema {
  const ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchemaFromJson(json);
  
  final List<TesterGroupContactSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchemaToJson(this);
}
