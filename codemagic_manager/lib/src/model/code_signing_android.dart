import 'package:json_annotation/json_annotation.dart';

import 'code_signing_keystore.dart';

part 'code_signing_android.g.dart';

@JsonSerializable()
class CodeSigningAndroid {
  CodeSigningAndroid({
    required this.enabled,
    this.keyAlias,
    this.keyPassword,
    this.keystore,
    this.keystorePassword,
  });

  final bool enabled;
  final String? keyAlias;
  final String? keyPassword;
  final CodeSigningKeystore? keystore;
  final String? keystorePassword;

  factory CodeSigningAndroid.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningAndroidFromJson(json);

  Map<String, dynamic> toJson() => _$CodeSigningAndroidToJson(this);
}
