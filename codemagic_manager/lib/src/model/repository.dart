import 'package:json_annotation/json_annotation.dart';

import 'owner.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository {
  Repository({
    required this.defaultBranch,
    required this.htmlUrl,
    required this.id,
    required this.isAuthenticationEnabled,
    required this.owner,
    required this.provider,
    this.language,
    this.publicSshKey,
    this.username,
  });

  final String defaultBranch;
  final String htmlUrl;
  @JsonKey(fromJson: Repository.idFromJson)
  final String id;
  final bool isAuthenticationEnabled;
  final String? language;
  final Owner owner;
  final String provider;
  final String? publicSshKey;
  final String? username;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);

  static String idFromJson(dynamic id) => '$id';
}
