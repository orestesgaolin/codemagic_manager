// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildSettings _$_$_BuildSettingsFromJson(Map json) {
  return _$_BuildSettings(
    androidBuildArguments: json['androidBuildArguments'] as String,
    automaticBuilds: json['automaticBuilds'] as bool,
    availablePlatforms:
        (json['availablePlatforms'] as List)?.map((e) => e as String)?.toList(),
    buildOnPrUpdate: json['buildOnPrUpdate'] as bool,
    cancelPending: json['cancelPending'] as bool,
    flutterMode: json['flutterMode'] as String,
    flutterVerbose: json['flutterVerbose'] as bool,
    flutterVersion: json['flutterVersion'] as String,
    iosBuildArguments: json['iosBuildArguments'] as String,
    platforms: (json['platforms'] as List)
        ?.map((e) => _$enumDecodeNullable(_$PlatformEnumMap, e))
        ?.toList(),
    projectFile: json['projectFile'] as String,
    tagBuilds: json['tagBuilds'] as bool,
    target: json['target'] as String,
    xcodeVersion: json['xcodeVersion'] as String,
  );
}

Map<String, dynamic> _$_$_BuildSettingsToJson(_$_BuildSettings instance) =>
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
      'platforms':
          instance.platforms?.map((e) => _$PlatformEnumMap[e])?.toList(),
      'projectFile': instance.projectFile,
      'tagBuilds': instance.tagBuilds,
      'target': instance.target,
      'xcodeVersion': instance.xcodeVersion,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$PlatformEnumMap = {
  Platform.android: 'android',
  Platform.ios: 'ios',
  Platform.web: 'web',
};
