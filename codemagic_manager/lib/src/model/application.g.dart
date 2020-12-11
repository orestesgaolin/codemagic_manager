// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map json) {
  return Application(
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
        ?.map((e) => _$enumDecode(_$UserRightsEnumMap, e))
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
}

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
          instance.userRights?.map((e) => _$UserRightsEnumMap[e]).toList(),
      'workflowIds': instance.workflowIds,
      'workflows': instance.workflows.map((k, e) => MapEntry(k, e.toJson())),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$UserRightsEnumMap = {
  UserRights.delete: 'delete',
};
