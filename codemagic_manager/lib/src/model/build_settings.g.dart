// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildSettings _$BuildSettingsFromJson(Map json) {
  return BuildSettings(
    androidBuildArguments: json['androidBuildArguments'] as String?,
    automaticBuilds: json['automaticBuilds'] as bool?,
    availablePlatforms: (json['availablePlatforms'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    buildOnPrUpdate: json['buildOnPrUpdate'] as bool? ?? false,
    cancelPending: json['cancelPending'] as bool? ?? false,
    flutterMode: json['flutterMode'] as String?,
    flutterVerbose: json['flutterVerbose'] as bool? ?? false,
    flutterVersion: json['flutterVersion'] as String,
    iosBuildArguments: json['iosBuildArguments'] as String?,
    platforms: (json['platforms'] as List<dynamic>)
        .map((e) => _$enumDecode(_$PlatformEnumMap, e))
        .toList(),
    projectFile: json['projectFile'] as String?,
    tagBuilds: json['tagBuilds'] as bool? ?? false,
    target: json['target'] as String?,
    xcodeVersion: json['xcodeVersion'] as String?,
  );
}

Map<String, dynamic> _$BuildSettingsToJson(BuildSettings instance) =>
    <String, dynamic>{
      'androidBuildArguments': instance.androidBuildArguments,
      'automaticBuilds': instance.automaticBuilds,
      'availablePlatforms': instance.availablePlatforms,
      'buildOnPrUpdate': instance.buildOnPrUpdate,
      'cancelPending': instance.cancelPending,
      'flutterMode': instance.flutterMode,
      'flutterVerbose': instance.flutterVerbose,
      'flutterVersion': instance.flutterVersion,
      'iosBuildArguments': instance.iosBuildArguments,
      'platforms': instance.platforms.map((e) => _$PlatformEnumMap[e]).toList(),
      'projectFile': instance.projectFile,
      'tagBuilds': instance.tagBuilds,
      'target': instance.target,
      'xcodeVersion': instance.xcodeVersion,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PlatformEnumMap = {
  Platform.android: 'android',
  Platform.ios: 'ios',
  Platform.web: 'web',
  Platform.windows: 'windows',
  Platform.linux: 'linux',
  Platform.macos: 'macos',
};
