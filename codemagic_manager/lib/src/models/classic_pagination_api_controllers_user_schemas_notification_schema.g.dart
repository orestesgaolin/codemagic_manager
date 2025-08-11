// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_user_schemas_notification_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersUserSchemasNotificationSchema
_$ClassicPaginationApiControllersUserSchemasNotificationSchemaFromJson(
  Map json,
) => ClassicPaginationApiControllersUserSchemasNotificationSchema(
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => NotificationSchema.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  pageSize: (json['page_size'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic>
_$ClassicPaginationApiControllersUserSchemasNotificationSchemaToJson(
  ClassicPaginationApiControllersUserSchemasNotificationSchema instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
