// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildStatusResponse _$BuildStatusResponseFromJson(Map json) =>
    BuildStatusResponse(
      application: Application.fromJson(
          Map<String, dynamic>.from(json['application'] as Map)),
      build: Build.fromJson(Map<String, dynamic>.from(json['build'] as Map)),
    );

Map<String, dynamic> _$BuildStatusResponseToJson(
        BuildStatusResponse instance) =>
    <String, dynamic>{
      'application': instance.application.toJson(),
      'build': instance.build.toJson(),
    };
