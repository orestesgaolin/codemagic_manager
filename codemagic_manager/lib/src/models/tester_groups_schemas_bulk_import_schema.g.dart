// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tester_groups_schemas_bulk_import_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TesterGroupsSchemasBulkImportSchema
_$TesterGroupsSchemasBulkImportSchemaFromJson(Map json) =>
    TesterGroupsSchemasBulkImportSchema(
      emails: (json['emails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TesterGroupsSchemasBulkImportSchemaToJson(
  TesterGroupsSchemasBulkImportSchema instance,
) => <String, dynamic>{'emails': instance.emails};
