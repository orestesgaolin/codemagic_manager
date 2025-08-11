import 'package:json_annotation/json_annotation.dart';

import 'artefact.dart';

part 'artifacts.g.dart';

/// Enhanced artifact model with additional fields for artifacts API
@JsonSerializable()
class Artifact {
  Artifact({
    required this.id,
    required this.buildId,
    required this.name,
    required this.type,
    required this.size,
    required this.createdAt,
    this.md5,
    this.packageName,
    this.versionName,
    this.downloadUrl,
  });

  @JsonKey(name: '_id')
  final String id;
  final String buildId;
  final String name;
  final String type;
  final int size;
  final DateTime createdAt;
  final String? md5;
  final String? packageName;
  final String? versionName;
  final String? downloadUrl;

  factory Artifact.fromJson(Map<String, dynamic> json) =>
      _$ArtifactFromJson(json);

  Map<String, dynamic> toJson() => _$ArtifactToJson(this);

  /// Convert to legacy Artefact model for compatibility
  Artefact toArtefact() {
    return Artefact(
      md5: md5,
      name: name,
      packageName: packageName,
      type: type,
      url: downloadUrl,
      versionName: versionName,
      size: size,
    );
  }
}

/// Wrapper class for artifacts list response
@JsonSerializable()
class Artifacts {
  Artifacts({
    required this.artifacts,
  });

  @JsonKey(defaultValue: [])
  final List<Artifact> artifacts;

  factory Artifacts.fromJson(Map<String, dynamic> json) =>
      _$ArtifactsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtifactsToJson(this);
}