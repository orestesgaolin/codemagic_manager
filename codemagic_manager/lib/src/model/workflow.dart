import 'package:json_annotation/json_annotation.dart';

import 'build_settings.dart';
import 'code_signing.dart';
import 'publishers.dart';

part 'workflow.g.dart';

@JsonSerializable()
class Workflow {
  Workflow({
    required this.id,
    required this.buildSettings,
    this.codeSigning,
    required this.instanceType,
    required this.isPublic,
    required this.maxBuildDuration,
    required this.name,
    required this.publishers,
  });

  @JsonKey(name: '_id')
  final String id;
  //TODO: branchPatterns;
  final BuildSettings buildSettings;
  final CodeSigning? codeSigning;
  //TODO: custom scripts
  //TODO: dependency cache
  //TODO: env variables
  final String instanceType;
  final bool isPublic;

  /// Build duration in seconds
  final int maxBuildDuration;
  final String name;
  final Publishers publishers;
  //TODO: test runners

  factory Workflow.fromJson(Map<String, dynamic> json) =>
      _$WorkflowFromJson(json);

  Map<String, dynamic> toJson() => _$WorkflowToJson(this);
}
