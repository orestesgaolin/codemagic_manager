// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_groups_schemas_variable_group_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableGroupsSchemasVariableGroupSchema
_$VariableGroupsSchemasVariableGroupSchemaFromJson(Map json) =>
    VariableGroupsSchemasVariableGroupSchema(
      id: json['id'] as String,
      name: json['name'] as String,
      advancedSecurity: json['advanced_security'] == null
          ? null
          : VariableGroupsSchemasAdvancedSecuritySchema.fromJson(
              Map<String, Object?>.from(json['advanced_security'] as Map),
            ),
    );

Map<String, dynamic> _$VariableGroupsSchemasVariableGroupSchemaToJson(
  VariableGroupsSchemasVariableGroupSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'advanced_security': instance.advancedSecurity?.toJson(),
};
