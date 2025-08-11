// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaSchema _$MetaSchemaFromJson(Map json) => MetaSchema(
  addressPrefixes: (json['address_prefixes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  simulatorAddressPrefixes:
      (json['simulator_address_prefixes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$MetaSchemaToJson(MetaSchema instance) =>
    <String, dynamic>{
      'address_prefixes': instance.addressPrefixes,
      'simulator_address_prefixes': instance.simulatorAddressPrefixes,
    };
