// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'shared_app_preview_details_schema.dart';

part 'no_pagination_api_controllers_shared_previews_schemas_shared_app_preview_details_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema {
  const NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchemaFromJson(json);
  
  final SharedAppPreviewDetailsSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchemaToJson(this);
}
