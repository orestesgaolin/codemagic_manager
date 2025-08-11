// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_groups_schemas_bulk_import_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableGroupsSchemasBulkImportSchema
_$VariableGroupsSchemasBulkImportSchemaFromJson(Map json) =>
    VariableGroupsSchemasBulkImportSchema(
      secure: json['secure'] as bool,
      variables: (json['variables'] as List<dynamic>)
          .map(
            (e) => NewEnvironmentVariableSchema.fromJson(
              Map<String, Object?>.from(e as Map),
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$VariableGroupsSchemasBulkImportSchemaToJson(
  VariableGroupsSchemasBulkImportSchema instance,
) => <String, dynamic>{
  'secure': instance.secure,
  'variables': instance.variables.map((e) => e.toJson()).toList(),
};
