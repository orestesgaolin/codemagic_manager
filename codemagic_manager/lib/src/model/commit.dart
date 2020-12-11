import 'package:json_annotation/json_annotation.dart';

part 'commit.g.dart';

@JsonSerializable()
class Commit {
  Commit({
    this.hash,
    this.url,
    this.authorEmail,
    this.authorAvatarUrl,
    this.authorName,
    this.commmiterName,
    this.commmiterEmail,
    this.commitMessage,
    this.branch,
    required this.isPoolRequest,
    this.pullRequestNumber,
  });

  final String? authorAvatarUrl;
  final String? authorEmail;
  final String? authorName;
  final String? commmiterName;
  final String? commmiterEmail;
  final String? commitMessage;
  final String? branch;
  final String? hash;
  final String? url;
  @JsonKey(defaultValue: false)
  final bool isPoolRequest;
  final String? pullRequestNumber;

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);
  Map<String, dynamic> toJson() => _$CommitToJson(this);
}
