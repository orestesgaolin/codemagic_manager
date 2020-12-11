import 'package:json_annotation/json_annotation.dart';

import 'publishers_appstore_connect.dart';
import 'publishers_email.dart';
import 'publishers_github_releases.dart';

part 'publishers.g.dart';

@JsonSerializable()
class Publishers {
  Publishers({
    required this.appStoreConnect,
    required this.email,
    required this.githubReleases,
  });

  final PublishersAppstoreConnect appStoreConnect;
  final PublishersEmail email;
  final PublishersGithubReleases githubReleases;
  //TODO: s3
  //TODO: slack
  //TODO: static pages

  factory Publishers.fromJson(Map<String, dynamic> json) =>
      _$PublishersFromJson(json);

  Map<String, dynamic> toJson() => _$PublishersToJson(this);
}
