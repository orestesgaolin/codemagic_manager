import 'package:json_annotation/json_annotation.dart';

part 'publishers_github_releases.g.dart';

@JsonSerializable()
class PublishersGithubReleases {
  PublishersGithubReleases({
    required this.enabled,
    required this.prerelease,
  });

  @JsonKey(defaultValue: false)
  final bool enabled;
  @JsonKey(defaultValue: false)
  final bool prerelease;

  factory PublishersGithubReleases.fromJson(Map<String, dynamic> json) =>
      _$PublishersGithubReleasesFromJson(json);

  Map<String, dynamic> toJson() => _$PublishersGithubReleasesToJson(this);
}
