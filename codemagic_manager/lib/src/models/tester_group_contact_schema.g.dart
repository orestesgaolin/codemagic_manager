// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tester_group_contact_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TesterGroupContactSchema _$TesterGroupContactSchemaFromJson(Map json) =>
    TesterGroupContactSchema(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      status: ContactStatus.fromJson(json['status'] as String),
      email: json['email'] as String,
      confirmedAt: json['confirmed_at'] == null
          ? null
          : DateTime.parse(json['confirmed_at'] as String),
    );

Map<String, dynamic> _$TesterGroupContactSchemaToJson(
  TesterGroupContactSchema instance,
) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'confirmed_at': instance.confirmedAt?.toIso8601String(),
  'status': instance.status.toJson(),
  'email': instance.email,
};
