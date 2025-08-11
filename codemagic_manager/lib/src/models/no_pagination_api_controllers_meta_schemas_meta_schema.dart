// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'meta_schema.dart';

part 'no_pagination_api_controllers_meta_schemas_meta_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersMetaSchemasMetaSchema {
  const NoPaginationApiControllersMetaSchemasMetaSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersMetaSchemasMetaSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersMetaSchemasMetaSchemaFromJson(json);
  
  final MetaSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersMetaSchemasMetaSchemaToJson(this);
}
