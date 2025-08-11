// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_group_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateGroupSchema _$UpdateGroupSchemaFromJson(Map json) => UpdateGroupSchema(
  name: json['name'] as String?,
  advancedSecurity: json['advanced_security'] == null
      ? null
      : VariableGroupsSchemasAdvancedSecuritySchema.fromJson(
          Map<String, Object?>.from(json['advanced_security'] as Map),
        ),
);

Map<String, dynamic> _$UpdateGroupSchemaToJson(UpdateGroupSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'advanced_security': instance.advancedSecurity?.toJson(),
    };
