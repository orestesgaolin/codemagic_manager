// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboards_schemas_build_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardsSchemasBuildSchema _$DashboardsSchemasBuildSchemaFromJson(
  Map json,
) => DashboardsSchemasBuildSchema(
  id: json['id'] as String,
  app: DashboardsSchemasAppSchema.fromJson(
    Map<String, Object?>.from(json['app'] as Map),
  ),
  workflow: WorkflowSchema.fromJson(
    Map<String, Object?>.from(json['workflow'] as Map),
  ),
  status: BuildStatus.fromJson(json['status'] as String),
  index: (json['index'] as num).toInt(),
  artifacts: (json['artifacts'] as List<dynamic>)
      .map(
        (e) => DashboardsSchemasArtifactSchema.fromJson(
          Map<String, Object?>.from(e as Map),
        ),
      )
      .toList(),
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
  releaseNotes: (json['release_notes'] as List<dynamic>)
      .map(
        (e) => DashboardsSchemasReleaseNoteSchema.fromJson(
          Map<String, Object?>.from(e as Map),
        ),
      )
      .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  commit: json['commit'] == null
      ? null
      : CommitSchema.fromJson(Map<String, Object?>.from(json['commit'] as Map)),
  branch: json['branch'] as String?,
  tag: json['tag'] as String?,
  pullRequest: json['pull_request'] == null
      ? null
      : PullRequestSchema.fromJson(
          Map<String, Object?>.from(json['pull_request'] as Map),
        ),
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  finishedAt: json['finished_at'] == null
      ? null
      : DateTime.parse(json['finished_at'] as String),
);

Map<String, dynamic> _$DashboardsSchemasBuildSchemaToJson(
  DashboardsSchemasBuildSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'app': instance.app.toJson(),
  'workflow': instance.workflow.toJson(),
  'status': instance.status.toJson(),
  'index': instance.index,
  'artifacts': instance.artifacts.map((e) => e.toJson()).toList(),
  'labels': instance.labels,
  'release_notes': instance.releaseNotes.map((e) => e.toJson()).toList(),
  'created_at': instance.createdAt.toIso8601String(),
  'commit': instance.commit?.toJson(),
  'branch': instance.branch,
  'tag': instance.tag,
  'pull_request': instance.pullRequest?.toJson(),
  'started_at': instance.startedAt?.toIso8601String(),
  'finished_at': instance.finishedAt?.toIso8601String(),
};
