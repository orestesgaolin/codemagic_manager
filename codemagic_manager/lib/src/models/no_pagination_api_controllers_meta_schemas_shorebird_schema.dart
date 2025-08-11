// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'shorebird_schema.dart';

part 'no_pagination_api_controllers_meta_schemas_shorebird_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersMetaSchemasShorebirdSchema {
  const NoPaginationApiControllersMetaSchemasShorebirdSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersMetaSchemasShorebirdSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersMetaSchemasShorebirdSchemaFromJson(json);
  
  final ShorebirdSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersMetaSchemasShorebirdSchemaToJson(this);
}
