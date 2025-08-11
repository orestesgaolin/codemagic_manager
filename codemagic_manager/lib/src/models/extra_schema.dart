// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'extra_schema.g.dart';

@JsonSerializable()
class ExtraSchema {
  const ExtraSchema({
    required this.limit,
  });
  
  factory ExtraSchema.fromJson(Map<String, Object?> json) => _$ExtraSchemaFromJson(json);
  
  final int limit;

  Map<String, Object?> toJson() => _$ExtraSchemaToJson(this);
}
