// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildAction _$BuildActionFromJson(Map json) => BuildAction(
      id: json['_id'] as String?,
      name: json['name'] as String,
      type: json['type'] as String?,
      status: json['status'] as String?,
      alwaysRun: json['alwaysRun'] as bool?,
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      logUrl: json['logUrl'] as String?,
    );

Map<String, dynamic> _$BuildActionToJson(BuildAction instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'alwaysRun': instance.alwaysRun,
      'status': instance.status,
      'startedAt': instance.startedAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'logUrl': instance.logUrl,
    };
