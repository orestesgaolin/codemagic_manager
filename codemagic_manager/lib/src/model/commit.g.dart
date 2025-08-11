// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commit _$CommitFromJson(Map json) => Commit(
      hash: json['hash'] as String?,
      url: json['url'] as String?,
      authorEmail: json['authorEmail'] as String?,
      authorAvatarUrl: json['authorAvatarUrl'] as String?,
      authorName: json['authorName'] as String?,
      commmiterName: json['commmiterName'] as String?,
      commmiterEmail: json['commmiterEmail'] as String?,
      commitMessage: json['commitMessage'] as String?,
      branch: json['branch'] as String?,
      isPoolRequest: json['isPoolRequest'] as bool? ?? false,
      pullRequestNumber: json['pullRequestNumber'] as String?,
    );

Map<String, dynamic> _$CommitToJson(Commit instance) => <String, dynamic>{
      'authorAvatarUrl': instance.authorAvatarUrl,
      'authorEmail': instance.authorEmail,
      'authorName': instance.authorName,
      'commmiterName': instance.commmiterName,
      'commmiterEmail': instance.commmiterEmail,
      'commitMessage': instance.commitMessage,
      'branch': instance.branch,
      'hash': instance.hash,
      'url': instance.url,
      'isPoolRequest': instance.isPoolRequest,
      'pullRequestNumber': instance.pullRequestNumber,
    };
