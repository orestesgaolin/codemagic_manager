// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PullRequestSchema _$PullRequestSchemaFromJson(Map json) => PullRequestSchema(
  number: (json['number'] as num).toInt(),
  sourceBranch: json['source_branch'] as String,
  destinationBranch: json['destination_branch'] as String,
);

Map<String, dynamic> _$PullRequestSchemaToJson(PullRequestSchema instance) =>
    <String, dynamic>{
      'number': instance.number,
      'source_branch': instance.sourceBranch,
      'destination_branch': instance.destinationBranch,
    };
