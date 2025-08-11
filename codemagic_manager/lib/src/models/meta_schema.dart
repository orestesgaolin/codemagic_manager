// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'meta_schema.g.dart';

@JsonSerializable()
class MetaSchema {
  const MetaSchema({
    required this.addressPrefixes,
    required this.simulatorAddressPrefixes,
  });
  
  factory MetaSchema.fromJson(Map<String, Object?> json) => _$MetaSchemaFromJson(json);
  
  /// A list of IP blocks used by build machines to clone the Git repository. Whitelist these IP blocks if your repository is behind a firewall. For more information, see [Firewall configuration for privately hosted repositories](https://docs.codemagic.io/getting-started/adding-apps/#firewall-configuration-for-privately-hosted-repositories).
  @JsonKey(name: 'address_prefixes')
  final List<String> addressPrefixes;

  /// A list of IP blocks used by your Android and iOS apps to make network requests. Whitelist these IP blocks if your backend behind a firewall. For more information, see [Previewing apps in the browser](https://docs.codemagic.io/yaml-testing/app-preview/).
  @JsonKey(name: 'simulator_address_prefixes')
  final List<String> simulatorAddressPrefixes;

  Map<String, Object?> toJson() => _$MetaSchemaToJson(this);
}
