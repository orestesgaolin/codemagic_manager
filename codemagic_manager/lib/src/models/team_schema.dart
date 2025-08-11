// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'team_schema.g.dart';

@JsonSerializable()
class TeamSchema {
  const TeamSchema({
    required this.id,
    required this.name,
    this.iconUrl,
  });
  
  factory TeamSchema.fromJson(Map<String, Object?> json) => _$TeamSchemaFromJson(json);
  
  final String id;
  final String name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  Map<String, Object?> toJson() => _$TeamSchemaToJson(this);
}
