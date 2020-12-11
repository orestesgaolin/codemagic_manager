import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'build_settings.g.dart';

@JsonSerializable()
class BuildSettings {
  BuildSettings({
    this.androidBuildArguments,
    required this.automaticBuilds,
    required this.availablePlatforms,
    required this.buildOnPrUpdate,
    required this.cancelPending,
    required this.flutterMode,
    required this.flutterVerbose,
    required this.flutterVersion,
    this.iosBuildArguments,
    required this.platforms,
    required this.projectFile,
    required this.tagBuilds,
    required this.target,
    required this.xcodeVersion,
  });

  final String? androidBuildArguments;
  final bool? automaticBuilds;
  @JsonKey(defaultValue: [])
  final List<String> availablePlatforms;
  @JsonKey(defaultValue: false)
  final bool buildOnPrUpdate;
  @JsonKey(defaultValue: false)
  final bool cancelPending;
  final String? flutterMode;
  @JsonKey(defaultValue: false)
  final bool flutterVerbose;
  final String flutterVersion;
  final String? iosBuildArguments;
  final List<Platform> platforms;
  final String? projectFile;
  @JsonKey(defaultValue: false)
  final bool tagBuilds;
  final String? target;
  final String? xcodeVersion;

  factory BuildSettings.fromJson(Map<String, dynamic> json) =>
      _$BuildSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$BuildSettingsToJson(this);
}
