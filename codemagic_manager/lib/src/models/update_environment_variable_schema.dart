// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'update_environment_variable_schema.g.dart';

@JsonSerializable()
class UpdateEnvironmentVariableSchema {
  const UpdateEnvironmentVariableSchema({
    this.name,
    this.value,
    this.secure,
  });
  
  factory UpdateEnvironmentVariableSchema.fromJson(Map<String, Object?> json) => _$UpdateEnvironmentVariableSchemaFromJson(json);
  
  final String? name;
  final String? value;
  final bool? secure;

  Map<String, Object?> toJson() => _$UpdateEnvironmentVariableSchemaToJson(this);
}
