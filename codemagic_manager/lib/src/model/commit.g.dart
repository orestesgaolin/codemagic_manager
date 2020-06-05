// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Commit _$_$_CommitFromJson(Map json) {
  return _$_Commit(
    authorAvatarUrl: json['authorAvatarUrl'] as String,
    authorName: json['authorName'] as String,
    commitMessage: json['commitMessage'] as String,
    hash: json['hash'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_CommitToJson(_$_Commit instance) => <String, dynamic>{
      'authorAvatarUrl': instance.authorAvatarUrl,
      'authorName': instance.authorName,
      'commitMessage': instance.commitMessage,
      'hash': instance.hash,
      'url': instance.url,
    };
