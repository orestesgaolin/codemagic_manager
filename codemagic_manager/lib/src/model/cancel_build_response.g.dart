// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_build_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancelBuildResponse _$_$_CancelBuildResponseFromJson(Map json) {
  return _$_CancelBuildResponse(
    build: json['build'] == null
        ? null
        : Build.fromJson((json['build'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_CancelBuildResponseToJson(
        _$_CancelBuildResponse instance) =>
    <String, dynamic>{
      'build': instance.build?.toJson(),
    };
