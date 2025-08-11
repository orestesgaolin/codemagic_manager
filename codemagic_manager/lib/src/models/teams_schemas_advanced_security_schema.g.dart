// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_schemas_advanced_security_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsSchemasAdvancedSecuritySchema _$TeamsSchemasAdvancedSecuritySchemaFromJson(
  Map json,
) => TeamsSchemasAdvancedSecuritySchema(
  enabled: json['enabled'] as bool,
  selectedApps: json['selected_apps'] as List<dynamic>,
);

Map<String, dynamic> _$TeamsSchemasAdvancedSecuritySchemaToJson(
  TeamsSchemasAdvancedSecuritySchema instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'selected_apps': instance.selectedApps,
};
