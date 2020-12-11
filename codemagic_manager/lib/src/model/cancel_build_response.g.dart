// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_build_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelBuildResponse _$CancelBuildResponseFromJson(Map json) {
  return CancelBuildResponse(
    build: Build.fromJson(Map<String, dynamic>.from(json['build'] as Map)),
  );
}

Map<String, dynamic> _$CancelBuildResponseToJson(
        CancelBuildResponse instance) =>
    <String, dynamic>{
      'build': instance.build.toJson(),
    };
