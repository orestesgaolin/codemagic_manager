// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artifact_public_url_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtifactPublicUrlResponse _$ArtifactPublicUrlResponseFromJson(Map json) =>
    ArtifactPublicUrlResponse(
      url: json['url'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$ArtifactPublicUrlResponseToJson(
        ArtifactPublicUrlResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
