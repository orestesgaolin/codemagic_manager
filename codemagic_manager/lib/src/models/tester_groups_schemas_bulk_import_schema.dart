// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'tester_groups_schemas_bulk_import_schema.g.dart';

@JsonSerializable()
class TesterGroupsSchemasBulkImportSchema {
  const TesterGroupsSchemasBulkImportSchema({
    required this.emails,
  });
  
  factory TesterGroupsSchemasBulkImportSchema.fromJson(Map<String, Object?> json) => _$TesterGroupsSchemasBulkImportSchemaFromJson(json);
  
  final List<String> emails;

  Map<String, Object?> toJson() => _$TesterGroupsSchemasBulkImportSchemaToJson(this);
}
