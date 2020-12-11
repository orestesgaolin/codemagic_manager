// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Publishers _$PublishersFromJson(Map json) {
  return Publishers(
    appStoreConnect: PublishersAppstoreConnect.fromJson(
        Map<String, dynamic>.from(json['appStoreConnect'] as Map)),
    email: PublishersEmail.fromJson(
        Map<String, dynamic>.from(json['email'] as Map)),
    githubReleases: PublishersGithubReleases.fromJson(
        Map<String, dynamic>.from(json['githubReleases'] as Map)),
  );
}

Map<String, dynamic> _$PublishersToJson(Publishers instance) =>
    <String, dynamic>{
      'appStoreConnect': instance.appStoreConnect.toJson(),
      'email': instance.email.toJson(),
      'githubReleases': instance.githubReleases.toJson(),
    };
