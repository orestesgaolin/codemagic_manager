// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artefact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artefact _$ArtefactFromJson(Map json) => Artefact(
      md5: json['md5'] as String?,
      name: json['name'] as String?,
      packageName: json['packageName'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
      versionName: json['versionName'] as String?,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArtefactToJson(Artefact instance) => <String, dynamic>{
      'md5': instance.md5,
      'name': instance.name,
      'packageName': instance.packageName,
      'type': instance.type,
      'url': instance.url,
      'versionName': instance.versionName,
      'size': instance.size,
    };
