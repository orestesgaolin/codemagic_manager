// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'extra_schema.dart';

part 'payment_required_schema.g.dart';

@JsonSerializable()
class PaymentRequiredSchema {
  const PaymentRequiredSchema({
    required this.statusCode,
    required this.detail,
    required this.extra,
  });
  
  factory PaymentRequiredSchema.fromJson(Map<String, Object?> json) => _$PaymentRequiredSchemaFromJson(json);
  
  @JsonKey(name: 'status_code')
  final int statusCode;
  final String detail;
  final ExtraSchema extra;

  Map<String, Object?> toJson() => _$PaymentRequiredSchemaToJson(this);
}
