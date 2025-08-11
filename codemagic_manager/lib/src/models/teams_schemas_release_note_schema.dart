// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'teams_schemas_release_note_schema.g.dart';

@JsonSerializable()
class TeamsSchemasReleaseNoteSchema {
  const TeamsSchemasReleaseNoteSchema({
    required this.language,
    required this.text,
  });
  
  factory TeamsSchemasReleaseNoteSchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasReleaseNoteSchemaFromJson(json);
  
  final String language;
  final String text;

  Map<String, Object?> toJson() => _$TeamsSchemasReleaseNoteSchemaToJson(this);
}
