import 'package:codemagic_manager/src/model/artefact.dart';
import 'package:codemagic_manager/src/model/build_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'commit.dart';
import 'config.dart';

part 'build.freezed.dart';
part 'build.g.dart';

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
    String status,
    String tag,
    String message,
    String version,
    String workflowId,
  }) = _Build;

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
}
