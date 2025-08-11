// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'teams_schemas_release_note_schema.dart';

part 'teams_schemas_build_schema.g.dart';

@JsonSerializable()
class TeamsSchemasBuildSchema {
  const TeamsSchemasBuildSchema({
    required this.id,
    required this.releaseNotes,
    required this.labels,
  });
  
  factory TeamsSchemasBuildSchema.fromJson(Map<String, Object?> json) => _$TeamsSchemasBuildSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'release_notes')
  final List<TeamsSchemasReleaseNoteSchema> releaseNotes;
  final List<String> labels;

  Map<String, Object?> toJson() => _$TeamsSchemasBuildSchemaToJson(this);
}
