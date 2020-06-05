// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'builds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Builds _$_$_BuildsFromJson(Map json) {
  return _$_Builds(
    applications: (json['applications'] as List)
        ?.map((e) => e == null
            ? null
            : Application.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    builds: (json['builds'] as List)
        ?.map((e) => e == null
            ? null
            : Build.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_BuildsToJson(_$_Builds instance) => <String, dynamic>{
      'applications': instance.applications?.map((e) => e?.toJson())?.toList(),
      'builds': instance.builds?.map((e) => e?.toJson())?.toList(),
    };
