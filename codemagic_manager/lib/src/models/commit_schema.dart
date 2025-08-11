// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'commit_schema.g.dart';

@JsonSerializable()
class CommitSchema {
  const CommitSchema({
    required this.hash,
    this.avatarUrl,
    this.authorName,
    this.message,
    this.url,
  });
  
  factory CommitSchema.fromJson(Map<String, Object?> json) => _$CommitSchemaFromJson(json);
  
  final String hash;
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @JsonKey(name: 'author_name')
  final String? authorName;
  final String? message;
  final String? url;

  Map<String, Object?> toJson() => _$CommitSchemaToJson(this);
}
