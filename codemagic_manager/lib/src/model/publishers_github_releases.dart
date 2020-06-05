import 'package:freezed_annotation/freezed_annotation.dart';

part 'publishers_github_releases.freezed.dart';
part 'publishers_github_releases.g.dart';

@freezed
abstract class PublishersGithubReleases with _$PublishersGithubReleases {
  factory PublishersGithubReleases({
    bool enabled,
    bool prerelease,
  }) = _PublishersGithubReleases;

  factory PublishersGithubReleases.fromJson(Map<String, dynamic> json) =>
      _$PublishersGithubReleasesFromJson(json);
}
