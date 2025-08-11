// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artifacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artifact _$ArtifactFromJson(Map json) => Artifact(
      id: json['_id'] as String,
      buildId: json['buildId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      size: (json['size'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      md5: json['md5'] as String?,
      packageName: json['packageName'] as String?,
      versionName: json['versionName'] as String?,
      downloadUrl: json['downloadUrl'] as String?,
    );

Map<String, dynamic> _$ArtifactToJson(Artifact instance) => <String, dynamic>{
      '_id': instance.id,
      'buildId': instance.buildId,
      'name': instance.name,
      'type': instance.type,
      'size': instance.size,
      'createdAt': instance.createdAt.toIso8601String(),
      'md5': instance.md5,
      'packageName': instance.packageName,
      'versionName': instance.versionName,
      'downloadUrl': instance.downloadUrl,
    };

Artifacts _$ArtifactsFromJson(Map json) => Artifacts(
      artifacts: (json['artifacts'] as List<dynamic>?)
              ?.map(
                  (e) => Artifact.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ArtifactsToJson(Artifacts instance) => <String, dynamic>{
      'artifacts': instance.artifacts.map((e) => e.toJson()).toList(),
    };
