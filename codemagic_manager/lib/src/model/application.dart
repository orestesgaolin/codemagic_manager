import 'package:freezed_annotation/freezed_annotation.dart';

import 'repository.dart';
import 'workflow.dart';

part 'application.freezed.dart';
part 'application.g.dart';

enum UserRights { delete }

@freezed
abstract class Application with _$Application {
  factory Application({
    @JsonKey(name: '_id') @required String id,
    String appName,
    bool archived,
    List<String> branches,
    String iconUrl,
    String lastBuildId,
    String ownerTeam,
    List<String> projectFiles,
    Repository repository,
    List<UserRights> userRights,
    List<String> workflowIds,
    Map<String, Workflow> workflows,
  }) = _Application;

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);
}
