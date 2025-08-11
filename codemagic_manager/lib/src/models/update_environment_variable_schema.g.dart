// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_environment_variable_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEnvironmentVariableSchema _$UpdateEnvironmentVariableSchemaFromJson(
  Map json,
) => UpdateEnvironmentVariableSchema(
  name: json['name'] as String?,
  value: json['value'] as String?,
  secure: json['secure'] as bool?,
);

Map<String, dynamic> _$UpdateEnvironmentVariableSchemaToJson(
  UpdateEnvironmentVariableSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
  'secure': instance.secure,
};
