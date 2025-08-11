// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'previews_schemas_app_schema.g.dart';

@JsonSerializable()
class PreviewsSchemasAppSchema {
  const PreviewsSchemasAppSchema({
    required this.id,
    required this.name,
    this.iconUrl,
  });
  
  factory PreviewsSchemasAppSchema.fromJson(Map<String, Object?> json) => _$PreviewsSchemasAppSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  Map<String, Object?> toJson() => _$PreviewsSchemasAppSchemaToJson(this);
}
