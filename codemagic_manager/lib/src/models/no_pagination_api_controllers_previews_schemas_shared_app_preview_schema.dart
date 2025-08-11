// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'shared_app_preview_schema.dart';

part 'no_pagination_api_controllers_previews_schemas_shared_app_preview_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema {
  const NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchemaFromJson(json);
  
  final SharedAppPreviewSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchemaToJson(this);
}
