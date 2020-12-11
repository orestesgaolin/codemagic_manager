import 'package:json_annotation/json_annotation.dart';

import 'repository.dart';
import 'workflow.dart';

part 'application.g.dart';

enum UserRights { delete }

@JsonSerializable()
class Application {
  Application({
    required this.id,
    required this.appName,
    required this.archived,
    required this.branches,
    this.iconUrl,
    this.lastBuildId,
    this.ownerTeam,
    this.projectFiles,
    this.repository,
    this.userRights,
    required this.workflowIds,
    required this.workflows,
  });

  @JsonKey(name: '_id')
  final String id;
  final String appName;
  final bool archived;
  @JsonKey(defaultValue: [])
  final List<String> branches;
  final String? iconUrl;
  final String? lastBuildId;
  final String? ownerTeam;
  final List<String>? projectFiles;
  final Repository? repository;
  final List<UserRights>? userRights;
  @JsonKey(defaultValue: [])
  final List<String> workflowIds;
  @JsonKey(defaultValue: {})
  final Map<String, Workflow> workflows;

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
