// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing_keystore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSigningKeystore _$CodeSigningKeystoreFromJson(Map json) {
  return CodeSigningKeystore(
    fileName: json['fileName'] as String,
    filePath: json['filePath'] as String,
  );
}

Map<String, dynamic> _$CodeSigningKeystoreToJson(
        CodeSigningKeystore instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'filePath': instance.filePath,
    };
