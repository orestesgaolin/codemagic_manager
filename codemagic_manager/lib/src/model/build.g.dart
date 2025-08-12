// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Build _$BuildFromJson(Map json) => Build(
      id: json['_id'] as String,
      appId: json['appId'] as String,
      artefacts: (json['artefacts'] as List<dynamic>?)
              ?.map(
                  (e) => Artefact.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      branch: json['branch'] as String?,
      buildActions: (json['buildActions'] as List<dynamic>?)
              ?.map((e) =>
                  BuildAction.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
      commit: Commit.fromJson(Map<String, dynamic>.from(json['commit'] as Map)),
      config: Config.fromJson(Map<String, dynamic>.from(json['config'] as Map)),
      index: (json['index'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecode(_$BuildStatusEnumMap, json['status']),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      tag: json['tag'] as String?,
      message: json['message'] as String?,
      version: json['version'] as String?,
      fileWorkflowId: json['fileWorkflowId'] as String?,
      workflowId: json['workflowId'] as String?,
      instanceType: json['instanceType'] as String?,
    );

Map<String, dynamic> _$BuildToJson(Build instance) => <String, dynamic>{
      '_id': instance.id,
      'appId': instance.appId,
      'artefacts': instance.artefacts.map((e) => e.toJson()).toList(),
      'branch': instance.branch,
      'buildActions': instance.buildActions.map((e) => e.toJson()).toList(),
      'commit': instance.commit.toJson(),
      'config': instance.config.toJson(),
      'index': instance.index,
      'createdAt': instance.createdAt.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'status': _$BuildStatusEnumMap[instance.status]!,
      'tag': instance.tag,
      'message': instance.message,
      'version': instance.version,
      'workflowId': instance.workflowId,
      'fileWorkflowId': instance.fileWorkflowId,
      'instanceType': instance.instanceType,
    };

const _$BuildStatusEnumMap = {
  BuildStatus.canceled: 'canceled',
  BuildStatus.finished: 'finished',
  BuildStatus.preparing: 'preparing',
  BuildStatus.failed: 'failed',
  BuildStatus.timeout: 'timeout',
  BuildStatus.fetching: 'fetching',
  BuildStatus.building: 'building',
  BuildStatus.queued: 'queued',
};
