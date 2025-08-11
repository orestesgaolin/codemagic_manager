// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'notification_schema.dart';

part 'classic_pagination_api_controllers_user_schemas_notification_schema.g.dart';

@JsonSerializable()
class ClassicPaginationApiControllersUserSchemasNotificationSchema {
  const ClassicPaginationApiControllersUserSchemasNotificationSchema({
    required this.data,
    required this.pageSize,
    required this.currentPage,
    required this.totalPages,
  });
  
  factory ClassicPaginationApiControllersUserSchemasNotificationSchema.fromJson(Map<String, Object?> json) => _$ClassicPaginationApiControllersUserSchemasNotificationSchemaFromJson(json);
  
  final List<NotificationSchema> data;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  Map<String, Object?> toJson() => _$ClassicPaginationApiControllersUserSchemasNotificationSchemaToJson(this);
}
