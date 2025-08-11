// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSchema _$NotificationSchemaFromJson(Map json) => NotificationSchema(
  id: json['id'] as String,
  category: NotificationCategory.fromJson(json['category'] as String),
  bodyText: json['body_text'] as String,
  ctaText: json['cta_text'] as String,
  ctaAction: json['cta_action'] as String,
);

Map<String, dynamic> _$NotificationSchemaToJson(NotificationSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category.toJson(),
      'body_text': instance.bodyText,
      'cta_text': instance.ctaText,
      'cta_action': instance.ctaAction,
    };
