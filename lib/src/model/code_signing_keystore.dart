import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_signing_keystore.freezed.dart';
part 'code_signing_keystore.g.dart';

@freezed
abstract class CodeSigningKeystore with _$CodeSigningKeystore {
  factory CodeSigningKeystore({
    String fileName,
    String filePath,
  }) = _CodeSigningKeystore;

  factory CodeSigningKeystore.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningKeystoreFromJson(json);
}
