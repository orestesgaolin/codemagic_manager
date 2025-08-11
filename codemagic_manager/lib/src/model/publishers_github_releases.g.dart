// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers_github_releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublishersGithubReleases _$PublishersGithubReleasesFromJson(Map json) =>
    PublishersGithubReleases(
      enabled: json['enabled'] as bool? ?? false,
      prerelease: json['prerelease'] as bool? ?? false,
    );

Map<String, dynamic> _$PublishersGithubReleasesToJson(
        PublishersGithubReleases instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'prerelease': instance.prerelease,
    };
