// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_variable_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvironmentVariableSchema _$EnvironmentVariableSchemaFromJson(Map json) =>
    EnvironmentVariableSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      secure: json['secure'] as bool,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$EnvironmentVariableSchemaToJson(
  EnvironmentVariableSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'value': instance.value,
  'secure': instance.secure,
};
