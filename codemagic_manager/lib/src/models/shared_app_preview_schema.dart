// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'shared_app_preview_schema.g.dart';

@JsonSerializable()
class SharedAppPreviewSchema {
  const SharedAppPreviewSchema({
    required this.id,
    required this.sharedPreviewId,
  });
  
  factory SharedAppPreviewSchema.fromJson(Map<String, Object?> json) => _$SharedAppPreviewSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'shared_preview_id')
  final String sharedPreviewId;

  Map<String, Object?> toJson() => _$SharedAppPreviewSchemaToJson(this);
}
