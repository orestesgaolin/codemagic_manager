// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'builds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Builds _$BuildsFromJson(Map json) {
  return Builds(
    (json['builds'] as List<dynamic>)
        .map((e) => Build.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    (json['applications'] as List<dynamic>)
        .map((e) => Application.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  );
}

Map<String, dynamic> _$BuildsToJson(Builds instance) => <String, dynamic>{
      'applications': instance.applications.map((e) => e.toJson()).toList(),
      'builds': instance.builds.map((e) => e.toJson()).toList(),
    };
