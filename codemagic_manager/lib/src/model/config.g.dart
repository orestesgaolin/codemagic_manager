// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) {
  return Config(
    buildSettings: BuildSettings.fromJson(
        Map<String, dynamic>.from(json['buildSettings'] as Map)),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'buildSettings': instance.buildSettings.toJson(),
      'name': instance.name,
    };
