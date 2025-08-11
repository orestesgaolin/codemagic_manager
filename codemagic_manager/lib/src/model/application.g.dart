// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map json) => Application(
      id: json['_id'] as String,
      appName: json['appName'] as String,
      archived: json['archived'] as bool,
      branches: (json['branches'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      iconUrl: json['iconUrl'] as String?,
      lastBuildId: json['lastBuildId'] as String?,
      ownerTeam: json['ownerTeam'] as String?,
      projectFiles: (json['projectFiles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(
              Map<String, dynamic>.from(json['repository'] as Map)),
      userRights: (json['userRights'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserRightsEnumMap, e))
          .toList(),
      workflowIds: (json['workflowIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      workflows: (json['workflows'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                Workflow.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          {},
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'appName': instance.appName,
      'archived': instance.archived,
      'branches': instance.branches,
      'iconUrl': instance.iconUrl,
      'lastBuildId': instance.lastBuildId,
      'ownerTeam': instance.ownerTeam,
      'projectFiles': instance.projectFiles,
      'repository': instance.repository?.toJson(),
      'userRights':
          instance.userRights?.map((e) => _$UserRightsEnumMap[e]!).toList(),
      'workflowIds': instance.workflowIds,
      'workflows': instance.workflows.map((k, e) => MapEntry(k, e.toJson())),
    };

const _$UserRightsEnumMap = {
  UserRights.delete: 'delete',
};
