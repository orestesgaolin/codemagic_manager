// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'apps_schemas_create_variable_group.g.dart';

@JsonSerializable()
class AppsSchemasCreateVariableGroup {
  const AppsSchemasCreateVariableGroup({
    required this.name,
  });
  
  factory AppsSchemasCreateVariableGroup.fromJson(Map<String, Object?> json) => _$AppsSchemasCreateVariableGroupFromJson(json);
  
  final String name;

  Map<String, Object?> toJson() => _$AppsSchemasCreateVariableGroupToJson(this);
}
