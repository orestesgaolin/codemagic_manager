// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'new_environment_variable_schema.g.dart';

@JsonSerializable()
class NewEnvironmentVariableSchema {
  const NewEnvironmentVariableSchema({
    required this.name,
    required this.value,
  });
  
  factory NewEnvironmentVariableSchema.fromJson(Map<String, Object?> json) => _$NewEnvironmentVariableSchemaFromJson(json);
  
  final String name;
  final String value;

  Map<String, Object?> toJson() => _$NewEnvironmentVariableSchemaToJson(this);
}
