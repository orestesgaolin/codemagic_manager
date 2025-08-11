// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'pull_request_schema.g.dart';

@JsonSerializable()
class PullRequestSchema {
  const PullRequestSchema({
    required this.number,
    required this.sourceBranch,
    required this.destinationBranch,
  });
  
  factory PullRequestSchema.fromJson(Map<String, Object?> json) => _$PullRequestSchemaFromJson(json);
  
  final int number;
  @JsonKey(name: 'source_branch')
  final String sourceBranch;
  @JsonKey(name: 'destination_branch')
  final String destinationBranch;

  Map<String, Object?> toJson() => _$PullRequestSchemaToJson(this);
}
