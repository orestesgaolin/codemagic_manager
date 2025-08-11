// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previews_schemas_build_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewsSchemasBuildSchema _$PreviewsSchemasBuildSchemaFromJson(Map json) =>
    PreviewsSchemasBuildSchema(
      id: json['id'] as String,
      releaseNotes: (json['release_notes'] as List<dynamic>)
          .map(
            (e) => PreviewsSchemasReleaseNoteSchema.fromJson(
              Map<String, Object?>.from(e as Map),
            ),
          )
          .toList(),
      labels: (json['labels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PreviewsSchemasBuildSchemaToJson(
  PreviewsSchemasBuildSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'release_notes': instance.releaseNotes.map((e) => e.toJson()).toList(),
  'labels': instance.labels,
};
