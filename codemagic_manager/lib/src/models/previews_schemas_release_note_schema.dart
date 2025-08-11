// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'previews_schemas_release_note_schema.g.dart';

@JsonSerializable()
class PreviewsSchemasReleaseNoteSchema {
  const PreviewsSchemasReleaseNoteSchema({
    required this.language,
    required this.text,
  });
  
  factory PreviewsSchemasReleaseNoteSchema.fromJson(Map<String, Object?> json) => _$PreviewsSchemasReleaseNoteSchemaFromJson(json);
  
  final String language;
  final String text;

  Map<String, Object?> toJson() => _$PreviewsSchemasReleaseNoteSchemaToJson(this);
}
