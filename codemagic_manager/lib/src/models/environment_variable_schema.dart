// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'environment_variable_schema.g.dart';

@JsonSerializable()
class EnvironmentVariableSchema {
  const EnvironmentVariableSchema({
    required this.id,
    required this.name,
    required this.secure,
    this.value,
  });
  
  factory EnvironmentVariableSchema.fromJson(Map<String, Object?> json) => _$EnvironmentVariableSchemaFromJson(json);
  
  final String id;
  final String name;
  final String? value;
  final bool secure;

  Map<String, Object?> toJson() => _$EnvironmentVariableSchemaToJson(this);
}
