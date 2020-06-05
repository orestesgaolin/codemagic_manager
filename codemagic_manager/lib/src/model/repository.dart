import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
abstract class Repository with _$Repository {
  factory Repository({
    String defaultBranch,
    String htmlUrl,
    @JsonKey(fromJson: Repository.idFromJson) String id,
    bool isAuthenticationEnabled,
    String language,
    Owner owner,
    String provider,
    String publicSshKey,
    String username,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);

  static String idFromJson(dynamic id) => '$id';
}
