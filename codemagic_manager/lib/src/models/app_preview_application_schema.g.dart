// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preview_application_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppPreviewApplicationSchema _$AppPreviewApplicationSchemaFromJson(Map json) =>
    AppPreviewApplicationSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String?,
    );

Map<String, dynamic> _$AppPreviewApplicationSchemaToJson(
  AppPreviewApplicationSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'icon_url': instance.iconUrl,
};
