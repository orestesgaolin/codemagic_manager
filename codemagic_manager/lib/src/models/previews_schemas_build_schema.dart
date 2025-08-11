// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'previews_schemas_release_note_schema.dart';

part 'previews_schemas_build_schema.g.dart';

@JsonSerializable()
class PreviewsSchemasBuildSchema {
  const PreviewsSchemasBuildSchema({
    required this.id,
    required this.releaseNotes,
    required this.labels,
  });
  
  factory PreviewsSchemasBuildSchema.fromJson(Map<String, Object?> json) => _$PreviewsSchemasBuildSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'release_notes')
  final List<PreviewsSchemasReleaseNoteSchema> releaseNotes;
  final List<String> labels;

  Map<String, Object?> toJson() => _$PreviewsSchemasBuildSchemaToJson(this);
}
