// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'build_status.dart';
import 'commit_schema.dart';
import 'dashboards_schemas_app_schema.dart';
import 'dashboards_schemas_artifact_schema.dart';
import 'dashboards_schemas_release_note_schema.dart';
import 'pull_request_schema.dart';
import 'workflow_schema.dart';

part 'dashboards_schemas_build_schema.g.dart';

@JsonSerializable()
class DashboardsSchemasBuildSchema {
  const DashboardsSchemasBuildSchema({
    required this.id,
    required this.app,
    required this.workflow,
    required this.status,
    required this.index,
    required this.artifacts,
    required this.labels,
    required this.releaseNotes,
    required this.createdAt,
    this.commit,
    this.branch,
    this.tag,
    this.pullRequest,
    this.startedAt,
    this.finishedAt,
  });
  
  factory DashboardsSchemasBuildSchema.fromJson(Map<String, Object?> json) => _$DashboardsSchemasBuildSchemaFromJson(json);
  
  final String id;
  final DashboardsSchemasAppSchema app;
  final WorkflowSchema workflow;
  final BuildStatus status;
  final int index;
  final List<DashboardsSchemasArtifactSchema> artifacts;
  final List<String> labels;
  @JsonKey(name: 'release_notes')
  final List<DashboardsSchemasReleaseNoteSchema> releaseNotes;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final CommitSchema? commit;
  final String? branch;
  final String? tag;
  @JsonKey(name: 'pull_request')
  final PullRequestSchema? pullRequest;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;

  Map<String, Object?> toJson() => _$DashboardsSchemasBuildSchemaToJson(this);
}
