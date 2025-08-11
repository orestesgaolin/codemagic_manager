// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_required_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRequiredSchema _$PaymentRequiredSchemaFromJson(Map json) =>
    PaymentRequiredSchema(
      statusCode: (json['status_code'] as num).toInt(),
      detail: json['detail'] as String,
      extra: ExtraSchema.fromJson(
        Map<String, Object?>.from(json['extra'] as Map),
      ),
    );

Map<String, dynamic> _$PaymentRequiredSchemaToJson(
  PaymentRequiredSchema instance,
) => <String, dynamic>{
  'status_code': instance.statusCode,
  'detail': instance.detail,
  'extra': instance.extra.toJson(),
};
