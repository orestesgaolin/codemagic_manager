import 'package:json_annotation/json_annotation.dart';

part 'code_signing_keystore.g.dart';

@JsonSerializable()
class CodeSigningKeystore {
  CodeSigningKeystore({
    required this.fileName,
    required this.filePath,
  });
  final String fileName;
  final String filePath;

  factory CodeSigningKeystore.fromJson(Map<String, dynamic> json) =>
      _$CodeSigningKeystoreFromJson(json);
  Map<String, dynamic> toJson() => _$CodeSigningKeystoreToJson(this);
}
