// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Config _$_$_ConfigFromJson(Map json) {
  return _$_Config(
    buildSettings: json['buildSettings'] == null
        ? null
        : BuildSettings.fromJson((json['buildSettings'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_ConfigToJson(_$_Config instance) => <String, dynamic>{
      'buildSettings': instance.buildSettings?.toJson(),
      'name': instance.name,
    };
