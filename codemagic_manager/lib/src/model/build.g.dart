// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Build _$_$_BuildFromJson(Map json) {
  return _$_Build(
    id: json['_id'] as String,
    appId: json['appId'] as String,
    artefacts: (json['artefacts'] as List)
        ?.map((e) => e == null
            ? null
            : Artefact.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    branch: json['branch'] as String,
    buildActions: (json['buildActions'] as List)
        ?.map((e) => e == null
            ? null
            : BuildAction.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    commit: json['commit'] == null
        ? null
        : Commit.fromJson((json['commit'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    config: json['config'] == null
        ? null
        : Config.fromJson((json['config'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    index: json['index'] as int,
    finishedAt: json['finishedAt'] == null
        ? null
        : DateTime.parse(json['finishedAt'] as String),
    startedAt: json['startedAt'] == null
        ? null
        : DateTime.parse(json['startedAt'] as String),
    status: _$enumDecodeNullable(_$BuildStatusEnumMap, json['status']),
    tag: json['tag'] as String,
    message: json['message'] as String,
    version: json['version'] as String,
    workflowId: json['workflowId'] as String,
  );
}

Map<String, dynamic> _$_$_BuildToJson(_$_Build instance) => <String, dynamic>{
      '_id': instance.id,
      'appId': instance.appId,
      'artefacts': instance.artefacts?.map((e) => e?.toJson())?.toList(),
      'branch': instance.branch,
      'buildActions': instance.buildActions?.map((e) => e?.toJson())?.toList(),
      'commit': instance.commit?.toJson(),
      'config': instance.config?.toJson(),
      'index': instance.index,
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'status': _$BuildStatusEnumMap[instance.status],
      'tag': instance.tag,
      'message': instance.message,
      'version': instance.version,
      'workflowId': instance.workflowId,
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
