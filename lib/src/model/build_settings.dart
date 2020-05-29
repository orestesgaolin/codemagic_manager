import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'build_settings.freezed.dart';
part 'build_settings.g.dart';

@freezed
abstract class BuildSettings with _$BuildSettings {
  factory BuildSettings({
    String androidBuildArguments,
    bool automaticBuilds,
    List<String> availablePlatforms,
    bool buildOnPrUpdate,
    bool cancelPending,
    String flutterMode,
    bool flutterVerbose,
    String flutterVersion,
    String iosBuildArguments,
    List<Platform> platforms,
    String projectFile,
    bool tagBuilds,
    String target,
    String xcodeVersion,
  }) = _BuildSettings;

  factory BuildSettings.fromJson(Map<String, dynamic> json) =>
      _$BuildSettingsFromJson(json);
}
