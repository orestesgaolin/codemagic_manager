// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_groups_schemas_advanced_security_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableGroupsSchemasAdvancedSecuritySchema
_$VariableGroupsSchemasAdvancedSecuritySchemaFromJson(Map json) =>
    VariableGroupsSchemasAdvancedSecuritySchema(
      enabled: json['enabled'] as bool,
      selectedApps: json['selected_apps'] as List<dynamic>,
    );

Map<String, dynamic> _$VariableGroupsSchemasAdvancedSecuritySchemaToJson(
  VariableGroupsSchemasAdvancedSecuritySchema instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'selected_apps': instance.selectedApps,
};
