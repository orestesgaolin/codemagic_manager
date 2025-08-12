import 'package:json_annotation/json_annotation.dart';

part 'artifact_public_url_response.g.dart';

@JsonSerializable()
class ArtifactPublicUrlResponse {
  ArtifactPublicUrlResponse({
    required this.url,
    required this.expiresAt,
  });

  final String url;
  final DateTime expiresAt;

  factory ArtifactPublicUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtifactPublicUrlResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtifactPublicUrlResponseToJson(this);
}