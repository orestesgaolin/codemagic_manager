import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'build.freezed.dart';
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

@freezed
abstract class Build with _$Build {
  factory Build({
    @JsonKey(name: '_id') @required String id,
    String appId,
    List<Artefact> artefacts,
    String branch,
    List<BuildAction> buildActions,
    Commit commit,
    Config config,
    //TODO: dynamic config
    //TODO: feedback
    int index,
    DateTime finishedAt,
    DateTime startedAt,
    BuildStatus status,
    String tag,
    String message,
    String version,
    String workflowId,
  }) = _Build;

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
}
