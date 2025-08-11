// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitSchema _$CommitSchemaFromJson(Map json) => CommitSchema(
  hash: json['hash'] as String,
  avatarUrl: json['avatar_url'] as String?,
  authorName: json['author_name'] as String?,
  message: json['message'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$CommitSchemaToJson(CommitSchema instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'avatar_url': instance.avatarUrl,
      'author_name': instance.authorName,
      'message': instance.message,
      'url': instance.url,
    };
