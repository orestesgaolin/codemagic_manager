// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'notification_category.dart';

part 'notification_schema.g.dart';

@JsonSerializable()
class NotificationSchema {
  const NotificationSchema({
    required this.id,
    required this.category,
    required this.bodyText,
    required this.ctaText,
    required this.ctaAction,
  });
  
  factory NotificationSchema.fromJson(Map<String, Object?> json) => _$NotificationSchemaFromJson(json);
  
  final String id;
  final NotificationCategory category;
  @JsonKey(name: 'body_text')
  final String bodyText;
  @JsonKey(name: 'cta_text')
  final String ctaText;
  @JsonKey(name: 'cta_action')
  final String ctaAction;

  Map<String, Object?> toJson() => _$NotificationSchemaToJson(this);
}
