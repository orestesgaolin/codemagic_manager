import 'package:freezed_annotation/freezed_annotation.dart';

import 'build_settings.dart';
import 'code_signing.dart';
import 'publishers.dart';

part 'workflow.freezed.dart';
part 'workflow.g.dart';

@freezed
abstract class Workflow with _$Workflow {
  factory Workflow({
    @JsonKey(name: '_id') @required String id,
    //TODO: branchPatterns,
    BuildSettings buildSettings,
    CodeSigning codeSigning,
    //TODO: custom scripts
    //TODO: dependency cache
    //TODO: env variables
    String instanceType,
    bool isPublic,
    int maxBuildDuration,
    String name,
    Publishers publishers,
    //TODO: test runners
  }) = _Workflow;

  factory Workflow.fromJson(Map<String, dynamic> json) =>
      _$WorkflowFromJson(json);
}
