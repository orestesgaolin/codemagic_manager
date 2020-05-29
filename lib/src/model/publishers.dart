import 'package:freezed_annotation/freezed_annotation.dart';

import 'publishers_appstore_connect.dart';
import 'publishers_email.dart';
import 'publishers_github_releases.dart';

part 'publishers.freezed.dart';
part 'publishers.g.dart';

@freezed
abstract class Publishers with _$Publishers {
  factory Publishers({
    PublishersAppstoreConnect appStoreConnect,
    PublishersEmail email,
    PublishersGithubReleases githubReleases,
    //TODO: s3
    //TODO: slack
    //TODO: static pages
  }) = _Publishers;

  factory Publishers.fromJson(Map<String, dynamic> json) => _$PublishersFromJson(json);
}