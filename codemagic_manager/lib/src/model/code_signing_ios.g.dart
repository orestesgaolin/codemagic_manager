// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing_ios.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSigningIos _$CodeSigningIosFromJson(Map json) {
  return CodeSigningIos(
    certificatePassword: json['certificatePassword'] as String?,
    developerCertificate: json['developerCertificate'] == null
        ? null
        : CodeSigningKeystore.fromJson(
            Map<String, dynamic>.from(json['developerCertificate'] as Map)),
    developerPortalBundleIdentifier:
        json['developerPortalBundleIdentifier'] as String?,
    developerPortalPassword: json['developerPortalPassword'] as String?,
    developerPortalProfileType: json['developerPortalProfileType'] as String?,
    developerPortalTeamId: json['developerPortalTeamId'] as String?,
    developerPortalUsername: json['developerPortalUsername'] as String?,
    enabled: json['enabled'] as bool? ?? false,
    encryptedKey: json['encryptedKey'] as bool?,
  );
}

Map<String, dynamic> _$CodeSigningIosToJson(CodeSigningIos instance) =>
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
