// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'dashboards_schemas_release_note_schema.g.dart';

@JsonSerializable()
class DashboardsSchemasReleaseNoteSchema {
  const DashboardsSchemasReleaseNoteSchema({
    required this.language,
    required this.text,
  });
  
  factory DashboardsSchemasReleaseNoteSchema.fromJson(Map<String, Object?> json) => _$DashboardsSchemasReleaseNoteSchemaFromJson(json);
  
  final String language;
  final String text;

  Map<String, Object?> toJson() => _$DashboardsSchemasReleaseNoteSchemaToJson(this);
}
