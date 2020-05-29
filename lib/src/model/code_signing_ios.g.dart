// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing_ios.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CodeSigningIos _$_$_CodeSigningIosFromJson(Map json) {
  return _$_CodeSigningIos(
    certificatePassword: json['certificatePassword'] as String,
    developerCertificate: json['developerCertificate'] == null
        ? null
        : CodeSigningKeystore.fromJson(
            (json['developerCertificate'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    developerPortalBundleIdentifier:
        json['developerPortalBundleIdentifier'] as String,
    developerPortalPassword: json['developerPortalPassword'] as String,
    developerPortalProfileType: json['developerPortalProfileType'] as String,
    developerPortalTeamId: json['developerPortalTeamId'] as String,
    developerPortalUsername: json['developerPortalUsername'] as String,
    enabled: json['enabled'] as bool,
    encryptedKey: json['encryptedKey'] as bool,
  );
}

Map<String, dynamic> _$_$_CodeSigningIosToJson(_$_CodeSigningIos instance) =>
    <String, dynamic>{
      'certificatePassword': instance.certificatePassword,
      'developerCertificate': instance.developerCertificate?.toJson(),
      'developerPortalBundleIdentifier':
          instance.developerPortalBundleIdentifier,
      'developerPortalPassword': instance.developerPortalPassword,
      'developerPortalProfileType': instance.developerPortalProfileType,
      'developerPortalTeamId': instance.developerPortalTeamId,
      'developerPortalUsername': instance.developerPortalUsername,
      'enabled': instance.enabled,
      'encryptedKey': instance.encryptedKey,
    };
