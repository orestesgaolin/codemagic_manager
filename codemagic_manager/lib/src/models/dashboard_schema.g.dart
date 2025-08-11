// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardSchema _$DashboardSchemaFromJson(Map json) => DashboardSchema(
  uuid: json['uuid'] as String,
  name: json['name'] as String,
  iconUrl: json['icon_url'] as String?,
);

Map<String, dynamic> _$DashboardSchemaToJson(DashboardSchema instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'icon_url': instance.iconUrl,
    };
