// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'app_preview_application_schema.g.dart';

@JsonSerializable()
class AppPreviewApplicationSchema {
  const AppPreviewApplicationSchema({
    required this.id,
    required this.name,
    this.iconUrl,
  });
  
  factory AppPreviewApplicationSchema.fromJson(Map<String, Object?> json) => _$AppPreviewApplicationSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  Map<String, Object?> toJson() => _$AppPreviewApplicationSchemaToJson(this);
}
