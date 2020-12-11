import 'package:json_annotation/json_annotation.dart';

import 'code_signing_keystore.dart';

part 'code_signing_ios.g.dart';

@JsonSerializable()
class CodeSigningIos {
  CodeSigningIos({
    this.certificatePassword,
    this.developerCertificate,
    this.developerPortalBundleIdentifier,
    this.developerPortalPassword,
    this.developerPortalProfileType,
    this.developerPortalTeamId,
    this.developerPortalUsername,
    required this.enabled,
    this.encryptedKey,
  });

  final String? certificatePassword;
  final CodeSigningKeystore? developerCertificate;
  final String? developerPortalBundleIdentifier;
  final String? developerPortalPassword;
  final String? developerPortalProfileType;
  final String? developerPortalTeamId;
  final String? developerPortalUsername;
  @JsonKey(defaultValue: false)
  final bool enabled;
  final bool? encryptedKey;
  //"certificatePassword": null,
  // "developerCertificate": null,
  // "developerPortalBundleIdentifier": null,
  // "developerPortalPassword": null,
  // "developerPortalProfileType": null,
  // "developerPortalTeamId": null,
  // "developerPortalUsername": null,
  // "enabled": null,
  // "encryptedKey": null,
  // "provisioningProfiles": [],
  // "signingMethod": null

  factory CodeSigningIos.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningIosFromJson(json);

  Map<String, dynamic> toJson() => _$CodeSigningIosToJson(this);
}
