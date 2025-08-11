// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'preferences_schema.dart';

part 'no_pagination_api_controllers_user_schemas_preferences_schema.g.dart';

@JsonSerializable()
class NoPaginationApiControllersUserSchemasPreferencesSchema {
  const NoPaginationApiControllersUserSchemasPreferencesSchema({
    required this.data,
  });
  
  factory NoPaginationApiControllersUserSchemasPreferencesSchema.fromJson(Map<String, Object?> json) => _$NoPaginationApiControllersUserSchemasPreferencesSchemaFromJson(json);
  
  final PreferencesSchema data;

  Map<String, Object?> toJson() => _$NoPaginationApiControllersUserSchemasPreferencesSchemaToJson(this);
}
