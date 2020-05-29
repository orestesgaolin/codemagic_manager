// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Publishers _$_$_PublishersFromJson(Map json) {
  return _$_Publishers(
    appStoreConnect: json['appStoreConnect'] == null
        ? null
        : PublishersAppstoreConnect.fromJson(
            (json['appStoreConnect'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    email: json['email'] == null
        ? null
        : PublishersEmail.fromJson((json['email'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    githubReleases: json['githubReleases'] == null
        ? null
        : PublishersGithubReleases.fromJson(
            (json['githubReleases'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_PublishersToJson(_$_Publishers instance) =>
    <String, dynamic>{
      'appStoreConnect': instance.appStoreConnect?.toJson(),
      'email': instance.email?.toJson(),
      'githubReleases': instance.githubReleases?.toJson(),
    };
