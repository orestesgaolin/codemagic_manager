// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ArtifactType {
  @JsonValue('aab')
  aab('aab'),
  @JsonValue('aar')
  aar('aar'),
  @JsonValue('apk')
  apk('apk'),
  @JsonValue('app')
  app('app'),
  @JsonValue('bundle')
  bundle('bundle'),
  @JsonValue('coverage_binary')
  coverageBinary('coverage_binary'),
  @JsonValue('coverage_data')
  coverageData('coverage_data'),
  @JsonValue('device_recording')
  deviceRecording('device_recording'),
  @JsonValue('directory')
  directory('directory'),
  @JsonValue('dsym')
  dsym('dsym'),
  @JsonValue('flutter_drive_log')
  flutterDriveLog('flutter_drive_log'),
  @JsonValue('flutter_web_build_dir')
  flutterWebBuildDir('flutter_web_build_dir'),
  @JsonValue('glob_matched')
  globMatched('glob_matched'),
  @JsonValue('ios_uitest_package')
  iosUitestPackage('ios_uitest_package'),
  @JsonValue('ios_xctest_package')
  iosXctestPackage('ios_xctest_package'),
  @JsonValue('ipa')
  ipa('ipa'),
  @JsonValue('jar')
  jar('jar'),
  @JsonValue('lint_result')
  lintResult('lint_result'),
  @JsonValue('linux_app')
  linuxApp('linux_app'),
  @JsonValue('log')
  log('log'),
  @JsonValue('logcat')
  logcat('logcat'),
  @JsonValue('msix')
  msix('msix'),
  @JsonValue('pkg')
  pkg('pkg'),
  @JsonValue('proguard_map')
  proguardMap('proguard_map'),
  @JsonValue('ios_simulator_log')
  iosSimulatorLog('ios_simulator_log'),
  @JsonValue('snap')
  snap('snap'),
  @JsonValue('static_lib')
  staticLib('static_lib'),
  @JsonValue('sylph_artefact_dir')
  sylphArtefactDir('sylph_artefact_dir'),
  @JsonValue('test_results_bundle')
  testResultsBundle('test_results_bundle'),
  @JsonValue('windows_exe')
  windowsExe('windows_exe'),
  @JsonValue('xcarchive')
  xcarchive('xcarchive'),
  @JsonValue('xcodebuild_log')
  xcodebuildLog('xcodebuild_log'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ArtifactType(this.json);

  factory ArtifactType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;

  @override
  String toString() => json ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<ArtifactType> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
