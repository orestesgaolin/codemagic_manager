// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'started_app_preview_schema.dart';

part 'no_pagination_api_controllers_builds_schemas_started_app_preview_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema {
  const NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchemaFromJson(json);
  
  final StartedAppPreviewSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchemaToJson(this);
}
