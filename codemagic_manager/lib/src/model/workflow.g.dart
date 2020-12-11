// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workflow _$WorkflowFromJson(Map json) {
  return Workflow(
    id: json['_id'] as String,
    buildSettings: BuildSettings.fromJson(
        Map<String, dynamic>.from(json['buildSettings'] as Map)),
    codeSigning: json['codeSigning'] == null
        ? null
        : CodeSigning.fromJson(
            Map<String, dynamic>.from(json['codeSigning'] as Map)),
    instanceType: json['instanceType'] as String,
    isPublic: json['isPublic'] as bool,
    maxBuildDuration: json['maxBuildDuration'] as int,
    name: json['name'] as String,
    publishers: Publishers.fromJson(
        Map<String, dynamic>.from(json['publishers'] as Map)),
  );
}

Map<String, dynamic> _$WorkflowToJson(Workflow instance) => <String, dynamic>{
      '_id': instance.id,
      'buildSettings': instance.buildSettings.toJson(),
      'codeSigning': instance.codeSigning?.toJson(),
      'instanceType': instance.instanceType,
      'isPublic': instance.isPublic,
      'maxBuildDuration': instance.maxBuildDuration,
      'name': instance.name,
      'publishers': instance.publishers.toJson(),
    };
