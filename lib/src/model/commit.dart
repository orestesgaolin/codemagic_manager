import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit.freezed.dart';
part 'commit.g.dart';

@freezed
abstract class Commit with _$Commit {
  factory Commit({
    String authorAvatarUrl,
    String authorName,
    String commitMessage,
    String hash,
    String url,
  }) = _Commit;

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);
}