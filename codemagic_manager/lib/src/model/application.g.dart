// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Application _$_$_ApplicationFromJson(Map json) {
  return _$_Application(
    id: json['_id'] as String,
    appName: json['appName'] as String,
    archived: json['archived'] as bool,
    branches: (json['branches'] as List)?.map((e) => e as String)?.toList(),
    iconUrl: json['iconUrl'] as String,
    lastBuildId: json['lastBuildId'] as String,
    ownerTeam: json['ownerTeam'] as String,
    projectFiles:
        (json['projectFiles'] as List)?.map((e) => e as String)?.toList(),
    repository: json['repository'] == null
        ? null
        : Repository.fromJson((json['repository'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    userRights: (json['userRights'] as List)
        ?.map((e) => _$enumDecodeNullable(_$UserRightsEnumMap, e))
        ?.toList(),
    workflowIds:
        (json['workflowIds'] as List)?.map((e) => e as String)?.toList(),
    workflows: (json['workflows'] as Map)?.map(
      (k, e) => MapEntry(
          k as String,
          e == null
              ? null
              : Workflow.fromJson((e as Map)?.map(
                  (k, e) => MapEntry(k as String, e),
                ))),
    ),
  );
}

Map<String, dynamic> _$_$_ApplicationToJson(_$_Application instance) =>
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
          instance.userRights?.map((e) => _$UserRightsEnumMap[e])?.toList(),
      'workflowIds': instance.workflowIds,
      'workflows': instance.workflows?.map((k, e) => MapEntry(k, e?.toJson())),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$UserRightsEnumMap = {
  UserRights.delete: 'delete',
};
