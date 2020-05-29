// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repository _$_$_RepositoryFromJson(Map json) {
  return _$_Repository(
    defaultBranch: json['defaultBranch'] as String,
    htmlUrl: json['htmlUrl'] as String,
    id: Repository.idFromJson(json['id']),
    isAuthenticationEnabled: json['isAuthenticationEnabled'] as bool,
    language: json['language'] as String,
    owner: json['owner'] == null
        ? null
        : Owner.fromJson((json['owner'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    provider: json['provider'] as String,
    publicSshKey: json['publicSshKey'] as String,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$_$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'defaultBranch': instance.defaultBranch,
      'htmlUrl': instance.htmlUrl,
      'id': instance.id,
      'isAuthenticationEnabled': instance.isAuthenticationEnabled,
      'language': instance.language,
      'owner': instance.owner?.toJson(),
      'provider': instance.provider,
      'publicSshKey': instance.publicSshKey,
      'username': instance.username,
    };
