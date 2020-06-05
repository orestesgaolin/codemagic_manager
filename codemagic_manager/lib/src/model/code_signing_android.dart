import 'package:freezed_annotation/freezed_annotation.dart';

import 'code_signing_keystore.dart';

part 'code_signing_android.freezed.dart';
part 'code_signing_android.g.dart';

@freezed
abstract class CodeSigningAndroid with _$CodeSigningAndroid {
  factory CodeSigningAndroid({
    bool enabled,
    String keyAlias,
    String keyPassword,
    CodeSigningKeystore keystore,
    String keystorePassword,
  }) = _CodeSigningAndroid;

  factory CodeSigningAndroid.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningAndroidFromJson(json);
}
