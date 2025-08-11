// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map json) => Repository(
      defaultBranch: json['defaultBranch'] as String,
      htmlUrl: json['htmlUrl'] as String,
      id: Repository.idFromJson(json['id']),
      isAuthenticationEnabled: json['isAuthenticationEnabled'] as bool,
      owner: Owner.fromJson(Map<String, dynamic>.from(json['owner'] as Map)),
      provider: json['provider'] as String,
      language: json['language'] as String?,
      publicSshKey: json['publicSshKey'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'defaultBranch': instance.defaultBranch,
      'htmlUrl': instance.htmlUrl,
      'id': instance.id,
      'isAuthenticationEnabled': instance.isAuthenticationEnabled,
      'language': instance.language,
      'owner': instance.owner.toJson(),
      'provider': instance.provider,
      'publicSshKey': instance.publicSshKey,
      'username': instance.username,
    };
