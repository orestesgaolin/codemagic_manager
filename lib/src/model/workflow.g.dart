// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workflow _$_$_WorkflowFromJson(Map json) {
  return _$_Workflow(
    id: json['_id'] as String,
    buildSettings: json['buildSettings'] == null
        ? null
        : BuildSettings.fromJson((json['buildSettings'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    codeSigning: json['codeSigning'] == null
        ? null
        : CodeSigning.fromJson((json['codeSigning'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    instanceType: json['instanceType'] as String,
    isPublic: json['isPublic'] as bool,
    maxBuildDuration: json['maxBuildDuration'] as int,
    name: json['name'] as String,
    publishers: json['publishers'] == null
        ? null
        : Publishers.fromJson((json['publishers'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_WorkflowToJson(_$_Workflow instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'buildSettings': instance.buildSettings?.toJson(),
      'codeSigning': instance.codeSigning?.toJson(),
      'instanceType': instance.instanceType,
      'isPublic': instance.isPublic,
      'maxBuildDuration': instance.maxBuildDuration,
      'name': instance.name,
      'publishers': instance.publishers?.toJson(),
    };
