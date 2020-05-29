// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'build_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BuildSettings _$BuildSettingsFromJson(Map<String, dynamic> json) {
  return _BuildSettings.fromJson(json);
}

class _$BuildSettingsTearOff {
  const _$BuildSettingsTearOff();

  _BuildSettings call(
      {String androidBuildArguments,
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
      String xcodeVersion}) {
    return _BuildSettings(
      androidBuildArguments: androidBuildArguments,
      automaticBuilds: automaticBuilds,
      availablePlatforms: availablePlatforms,
      buildOnPrUpdate: buildOnPrUpdate,
      cancelPending: cancelPending,
      flutterMode: flutterMode,
      flutterVerbose: flutterVerbose,
      flutterVersion: flutterVersion,
      iosBuildArguments: iosBuildArguments,
      platforms: platforms,
      projectFile: projectFile,
      tagBuilds: tagBuilds,
      target: target,
      xcodeVersion: xcodeVersion,
    );
  }
}

// ignore: unused_element
const $BuildSettings = _$BuildSettingsTearOff();

mixin _$BuildSettings {
  String get androidBuildArguments;
  bool get automaticBuilds;
  List<String> get availablePlatforms;
  bool get buildOnPrUpdate;
  bool get cancelPending;
  String get flutterMode;
  bool get flutterVerbose;
  String get flutterVersion;
  String get iosBuildArguments;
  List<Platform> get platforms;
  String get projectFile;
  bool get tagBuilds;
  String get target;
  String get xcodeVersion;

  Map<String, dynamic> toJson();
  $BuildSettingsCopyWith<BuildSettings> get copyWith;
}

abstract class $BuildSettingsCopyWith<$Res> {
  factory $BuildSettingsCopyWith(
          BuildSettings value, $Res Function(BuildSettings) then) =
      _$BuildSettingsCopyWithImpl<$Res>;
  $Res call(
      {String androidBuildArguments,
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
      String xcodeVersion});
}

class _$BuildSettingsCopyWithImpl<$Res>
    implements $BuildSettingsCopyWith<$Res> {
  _$BuildSettingsCopyWithImpl(this._value, this._then);

  final BuildSettings _value;
  // ignore: unused_field
  final $Res Function(BuildSettings) _then;

  @override
  $Res call({
    Object androidBuildArguments = freezed,
    Object automaticBuilds = freezed,
    Object availablePlatforms = freezed,
    Object buildOnPrUpdate = freezed,
    Object cancelPending = freezed,
    Object flutterMode = freezed,
    Object flutterVerbose = freezed,
    Object flutterVersion = freezed,
    Object iosBuildArguments = freezed,
    Object platforms = freezed,
    Object projectFile = freezed,
    Object tagBuilds = freezed,
    Object target = freezed,
    Object xcodeVersion = freezed,
  }) {
    return _then(_value.copyWith(
      androidBuildArguments: androidBuildArguments == freezed
          ? _value.androidBuildArguments
          : androidBuildArguments as String,
      automaticBuilds: automaticBuilds == freezed
          ? _value.automaticBuilds
          : automaticBuilds as bool,
      availablePlatforms: availablePlatforms == freezed
          ? _value.availablePlatforms
          : availablePlatforms as List<String>,
      buildOnPrUpdate: buildOnPrUpdate == freezed
          ? _value.buildOnPrUpdate
          : buildOnPrUpdate as bool,
      cancelPending: cancelPending == freezed
          ? _value.cancelPending
          : cancelPending as bool,
      flutterMode:
          flutterMode == freezed ? _value.flutterMode : flutterMode as String,
      flutterVerbose: flutterVerbose == freezed
          ? _value.flutterVerbose
          : flutterVerbose as bool,
      flutterVersion: flutterVersion == freezed
          ? _value.flutterVersion
          : flutterVersion as String,
      iosBuildArguments: iosBuildArguments == freezed
          ? _value.iosBuildArguments
          : iosBuildArguments as String,
      platforms:
          platforms == freezed ? _value.platforms : platforms as List<Platform>,
      projectFile:
          projectFile == freezed ? _value.projectFile : projectFile as String,
      tagBuilds: tagBuilds == freezed ? _value.tagBuilds : tagBuilds as bool,
      target: target == freezed ? _value.target : target as String,
      xcodeVersion: xcodeVersion == freezed
          ? _value.xcodeVersion
          : xcodeVersion as String,
    ));
  }
}

abstract class _$BuildSettingsCopyWith<$Res>
    implements $BuildSettingsCopyWith<$Res> {
  factory _$BuildSettingsCopyWith(
          _BuildSettings value, $Res Function(_BuildSettings) then) =
      __$BuildSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String androidBuildArguments,
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
      String xcodeVersion});
}

class __$BuildSettingsCopyWithImpl<$Res>
    extends _$BuildSettingsCopyWithImpl<$Res>
    implements _$BuildSettingsCopyWith<$Res> {
  __$BuildSettingsCopyWithImpl(
      _BuildSettings _value, $Res Function(_BuildSettings) _then)
      : super(_value, (v) => _then(v as _BuildSettings));

  @override
  _BuildSettings get _value => super._value as _BuildSettings;

  @override
  $Res call({
    Object androidBuildArguments = freezed,
    Object automaticBuilds = freezed,
    Object availablePlatforms = freezed,
    Object buildOnPrUpdate = freezed,
    Object cancelPending = freezed,
    Object flutterMode = freezed,
    Object flutterVerbose = freezed,
    Object flutterVersion = freezed,
    Object iosBuildArguments = freezed,
    Object platforms = freezed,
    Object projectFile = freezed,
    Object tagBuilds = freezed,
    Object target = freezed,
    Object xcodeVersion = freezed,
  }) {
    return _then(_BuildSettings(
      androidBuildArguments: androidBuildArguments == freezed
          ? _value.androidBuildArguments
          : androidBuildArguments as String,
      automaticBuilds: automaticBuilds == freezed
          ? _value.automaticBuilds
          : automaticBuilds as bool,
      availablePlatforms: availablePlatforms == freezed
          ? _value.availablePlatforms
          : availablePlatforms as List<String>,
      buildOnPrUpdate: buildOnPrUpdate == freezed
          ? _value.buildOnPrUpdate
          : buildOnPrUpdate as bool,
      cancelPending: cancelPending == freezed
          ? _value.cancelPending
          : cancelPending as bool,
      flutterMode:
          flutterMode == freezed ? _value.flutterMode : flutterMode as String,
      flutterVerbose: flutterVerbose == freezed
          ? _value.flutterVerbose
          : flutterVerbose as bool,
      flutterVersion: flutterVersion == freezed
          ? _value.flutterVersion
          : flutterVersion as String,
      iosBuildArguments: iosBuildArguments == freezed
          ? _value.iosBuildArguments
          : iosBuildArguments as String,
      platforms:
          platforms == freezed ? _value.platforms : platforms as List<Platform>,
      projectFile:
          projectFile == freezed ? _value.projectFile : projectFile as String,
      tagBuilds: tagBuilds == freezed ? _value.tagBuilds : tagBuilds as bool,
      target: target == freezed ? _value.target : target as String,
      xcodeVersion: xcodeVersion == freezed
          ? _value.xcodeVersion
          : xcodeVersion as String,
    ));
  }
}

@JsonSerializable()
class _$_BuildSettings implements _BuildSettings {
  _$_BuildSettings(
      {this.androidBuildArguments,
      this.automaticBuilds,
      this.availablePlatforms,
      this.buildOnPrUpdate,
      this.cancelPending,
      this.flutterMode,
      this.flutterVerbose,
      this.flutterVersion,
      this.iosBuildArguments,
      this.platforms,
      this.projectFile,
      this.tagBuilds,
      this.target,
      this.xcodeVersion});

  factory _$_BuildSettings.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildSettingsFromJson(json);

  @override
  final String androidBuildArguments;
  @override
  final bool automaticBuilds;
  @override
  final List<String> availablePlatforms;
  @override
  final bool buildOnPrUpdate;
  @override
  final bool cancelPending;
  @override
  final String flutterMode;
  @override
  final bool flutterVerbose;
  @override
  final String flutterVersion;
  @override
  final String iosBuildArguments;
  @override
  final List<Platform> platforms;
  @override
  final String projectFile;
  @override
  final bool tagBuilds;
  @override
  final String target;
  @override
  final String xcodeVersion;

  @override
  String toString() {
    return 'BuildSettings(androidBuildArguments: $androidBuildArguments, automaticBuilds: $automaticBuilds, availablePlatforms: $availablePlatforms, buildOnPrUpdate: $buildOnPrUpdate, cancelPending: $cancelPending, flutterMode: $flutterMode, flutterVerbose: $flutterVerbose, flutterVersion: $flutterVersion, iosBuildArguments: $iosBuildArguments, platforms: $platforms, projectFile: $projectFile, tagBuilds: $tagBuilds, target: $target, xcodeVersion: $xcodeVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildSettings &&
            (identical(other.androidBuildArguments, androidBuildArguments) ||
                const DeepCollectionEquality().equals(
                    other.androidBuildArguments, androidBuildArguments)) &&
            (identical(other.automaticBuilds, automaticBuilds) ||
                const DeepCollectionEquality()
                    .equals(other.automaticBuilds, automaticBuilds)) &&
            (identical(other.availablePlatforms, availablePlatforms) ||
                const DeepCollectionEquality()
                    .equals(other.availablePlatforms, availablePlatforms)) &&
            (identical(other.buildOnPrUpdate, buildOnPrUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.buildOnPrUpdate, buildOnPrUpdate)) &&
            (identical(other.cancelPending, cancelPending) ||
                const DeepCollectionEquality()
                    .equals(other.cancelPending, cancelPending)) &&
            (identical(other.flutterMode, flutterMode) ||
                const DeepCollectionEquality()
                    .equals(other.flutterMode, flutterMode)) &&
            (identical(other.flutterVerbose, flutterVerbose) ||
                const DeepCollectionEquality()
                    .equals(other.flutterVerbose, flutterVerbose)) &&
            (identical(other.flutterVersion, flutterVersion) ||
                const DeepCollectionEquality()
                    .equals(other.flutterVersion, flutterVersion)) &&
            (identical(other.iosBuildArguments, iosBuildArguments) ||
                const DeepCollectionEquality()
                    .equals(other.iosBuildArguments, iosBuildArguments)) &&
            (identical(other.platforms, platforms) ||
                const DeepCollectionEquality()
                    .equals(other.platforms, platforms)) &&
            (identical(other.projectFile, projectFile) ||
                const DeepCollectionEquality()
                    .equals(other.projectFile, projectFile)) &&
            (identical(other.tagBuilds, tagBuilds) ||
                const DeepCollectionEquality()
                    .equals(other.tagBuilds, tagBuilds)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.xcodeVersion, xcodeVersion) ||
                const DeepCollectionEquality()
                    .equals(other.xcodeVersion, xcodeVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(androidBuildArguments) ^
      const DeepCollectionEquality().hash(automaticBuilds) ^
      const DeepCollectionEquality().hash(availablePlatforms) ^
      const DeepCollectionEquality().hash(buildOnPrUpdate) ^
      const DeepCollectionEquality().hash(cancelPending) ^
      const DeepCollectionEquality().hash(flutterMode) ^
      const DeepCollectionEquality().hash(flutterVerbose) ^
      const DeepCollectionEquality().hash(flutterVersion) ^
      const DeepCollectionEquality().hash(iosBuildArguments) ^
      const DeepCollectionEquality().hash(platforms) ^
      const DeepCollectionEquality().hash(projectFile) ^
      const DeepCollectionEquality().hash(tagBuilds) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(xcodeVersion);

  @override
  _$BuildSettingsCopyWith<_BuildSettings> get copyWith =>
      __$BuildSettingsCopyWithImpl<_BuildSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildSettingsToJson(this);
  }
}

abstract class _BuildSettings implements BuildSettings {
  factory _BuildSettings(
      {String androidBuildArguments,
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
      String xcodeVersion}) = _$_BuildSettings;

  factory _BuildSettings.fromJson(Map<String, dynamic> json) =
      _$_BuildSettings.fromJson;

  @override
  String get androidBuildArguments;
  @override
  bool get automaticBuilds;
  @override
  List<String> get availablePlatforms;
  @override
  bool get buildOnPrUpdate;
  @override
  bool get cancelPending;
  @override
  String get flutterMode;
  @override
  bool get flutterVerbose;
  @override
  String get flutterVersion;
  @override
  String get iosBuildArguments;
  @override
  List<Platform> get platforms;
  @override
  String get projectFile;
  @override
  bool get tagBuilds;
  @override
  String get target;
  @override
  String get xcodeVersion;
  @override
  _$BuildSettingsCopyWith<_BuildSettings> get copyWith;
}
