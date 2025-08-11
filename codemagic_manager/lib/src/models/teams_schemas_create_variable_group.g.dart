// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_schemas_create_variable_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsSchemasCreateVariableGroup _$TeamsSchemasCreateVariableGroupFromJson(
  Map json,
) => TeamsSchemasCreateVariableGroup(
  name: json['name'] as String,
  advancedSecurity: TeamsSchemasAdvancedSecuritySchema.fromJson(
    Map<String, Object?>.from(json['advanced_security'] as Map),
  ),
);

Map<String, dynamic> _$TeamsSchemasCreateVariableGroupToJson(
  TeamsSchemasCreateVariableGroup instance,
) => <String, dynamic>{
  'name': instance.name,
  'advanced_security': instance.advancedSecurity.toJson(),
};
