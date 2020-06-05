import 'package:freezed_annotation/freezed_annotation.dart';

import 'code_signing_keystore.dart';

part 'code_signing_ios.freezed.dart';
part 'code_signing_ios.g.dart';

@freezed
abstract class CodeSigningIos with _$CodeSigningIos {
  factory CodeSigningIos({
    String certificatePassword,
    CodeSigningKeystore developerCertificate,
    String developerPortalBundleIdentifier,
    String developerPortalPassword,
    String developerPortalProfileType,
    String developerPortalTeamId,
    String developerPortalUsername,
    bool enabled,
    bool encryptedKey,
    // "certificatePassword": null,
    //                         "developerCertificate": null,
    //                         "developerPortalBundleIdentifier": null,
    //                         "developerPortalPassword": null,
    //                         "developerPortalProfileType": null,
    //                         "developerPortalTeamId": null,
    //                         "developerPortalUsername": null,
    //                         "enabled": null,
    //                         "encryptedKey": null,
    //                         "provisioningProfiles": [],
    //                         "signingMethod": null
  }) = _CodeSigningIos;

  factory CodeSigningIos.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningIosFromJson(json);
}
