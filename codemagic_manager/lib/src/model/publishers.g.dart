// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Publishers _$PublishersFromJson(Map json) => Publishers(
      appStoreConnect: json['appStoreConnect'] == null
          ? null
          : PublishersAppstoreConnect.fromJson(
              Map<String, dynamic>.from(json['appStoreConnect'] as Map)),
      email: json['email'] == null
          ? null
          : PublishersEmail.fromJson(
              Map<String, dynamic>.from(json['email'] as Map)),
      githubReleases: json['githubReleases'] == null
          ? null
          : PublishersGithubReleases.fromJson(
              Map<String, dynamic>.from(json['githubReleases'] as Map)),
    );

Map<String, dynamic> _$PublishersToJson(Publishers instance) =>
    <String, dynamic>{
      'appStoreConnect': instance.appStoreConnect?.toJson(),
      'email': instance.email?.toJson(),
      'githubReleases': instance.githubReleases?.toJson(),
    };
