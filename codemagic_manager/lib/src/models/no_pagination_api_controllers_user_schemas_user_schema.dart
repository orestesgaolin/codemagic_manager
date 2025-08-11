// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'user_schema.dart';

part 'no_pagination_api_controllers_user_schemas_user_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersUserSchemasUserSchema {
  const NoPaginationApiControllersUserSchemasUserSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersUserSchemasUserSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersUserSchemasUserSchemaFromJson(json);
  
  final UserSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersUserSchemasUserSchemaToJson(this);
}
