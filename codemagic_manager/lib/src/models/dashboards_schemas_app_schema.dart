// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'dashboards_schemas_app_schema.g.dart';

@JsonSerializable()
class DashboardsSchemasAppSchema {
  const DashboardsSchemasAppSchema({
    required this.name,
    this.iconUrl,
  });
  
  factory DashboardsSchemasAppSchema.fromJson(Map<String, Object?> json) => _$DashboardsSchemasAppSchemaFromJson(json);
  
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  Map<String, Object?> toJson() => _$DashboardsSchemasAppSchemaToJson(this);
}
