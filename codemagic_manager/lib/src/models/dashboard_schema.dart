// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'dashboard_schema.g.dart';

@JsonSerializable()
class DashboardSchema {
  const DashboardSchema({
    required this.uuid,
    required this.name,
    this.iconUrl,
  });
  
  factory DashboardSchema.fromJson(Map<String, Object?> json) => _$DashboardSchemaFromJson(json);
  
  final String uuid;
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  Map<String, Object?> toJson() => _$DashboardSchemaToJson(this);
}
