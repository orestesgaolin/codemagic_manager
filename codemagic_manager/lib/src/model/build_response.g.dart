// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildResponse _$_$_BuildResponseFromJson(Map json) {
  return _$_BuildResponse(
    application: json['application'] == null
        ? null
        : Application.fromJson((json['application'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    build: json['build'] == null
        ? null
        : Build.fromJson((json['build'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_BuildResponseToJson(_$_BuildResponse instance) =>
    <String, dynamic>{
      'application': instance.application?.toJson(),
      'build': instance.build?.toJson(),
    };
