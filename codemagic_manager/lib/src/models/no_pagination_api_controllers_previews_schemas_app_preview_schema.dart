// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'previews_schemas_app_preview_schema.dart';

part 'no_pagination_api_controllers_previews_schemas_app_preview_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersPreviewsSchemasAppPreviewSchema {
  const NoPaginationApiControllersPreviewsSchemasAppPreviewSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersPreviewsSchemasAppPreviewSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersPreviewsSchemasAppPreviewSchemaFromJson(json);
  
  final PreviewsSchemasAppPreviewSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersPreviewsSchemasAppPreviewSchemaToJson(this);
}
