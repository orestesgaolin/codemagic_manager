import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'build.g.dart';

enum BuildStatus {
  canceled,
  finished,
  preparing,
  failed,
  timeout,
  fetching,
  building,
  queued,
}

extension BuildStatusExt on BuildStatus {
  bool get isRunning =>
      this == BuildStatus.preparing ||
      this == BuildStatus.queued ||
      this == BuildStatus.fetching ||
      this == BuildStatus.building;

  bool get isFailed =>
      this == BuildStatus.failed || this == BuildStatus.timeout;

  bool get isSuccess => this == BuildStatus.finished;
}

@JsonSerializable()
class Build {
  Build({
    required this.id,
    required this.appId,
    required this.artefacts,
    required this.branch,
    required this.buildActions,
    required this.commit,
    required this.config,
    required this.index,
    required this.createdAt,
    required this.status,
    this.finishedAt,
    this.startedAt,
    this.tag,
    this.message,
    this.version,
    this.fileWorkflowId,
    this.workflowId,
    this.instanceType,
  });

  @JsonKey(name: '_id')
  final String id;
  final String appId;
  @JsonKey(defaultValue: [])
  final List<Artefact> artefacts;
  final String? branch;
  @JsonKey(defaultValue: [])
  final List<BuildAction> buildActions;
  final Commit commit;
  final Config config;
  //TODO: dynamic config
  //TODO: feedback
  final int index;
  final DateTime createdAt;
  final DateTime? finishedAt;
  final DateTime? startedAt;
  final BuildStatus status;
  final String? tag;
  final String? message;
  final String? version;
  final String? workflowId;
  final String? fileWorkflowId;
  final String? instanceType;

  /// Either web or file workflow id
  String? get workflow => workflowId ?? fileWorkflowId;

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
  Map<String, dynamic> toJson() => _$BuildToJson(this);
}
