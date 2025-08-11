// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'contact_status.dart';

part 'tester_group_contact_schema.g.dart';

@JsonSerializable()
class TesterGroupContactSchema {
  const TesterGroupContactSchema({
    required this.id,
    required this.createdAt,
    required this.status,
    required this.email,
    this.confirmedAt,
  });
  
  factory TesterGroupContactSchema.fromJson(Map<String, Object?> json) => _$TesterGroupContactSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'confirmed_at')
  final DateTime? confirmedAt;
  final ContactStatus status;
  final String email;

  Map<String, Object?> toJson() => _$TesterGroupContactSchemaToJson(this);
}
