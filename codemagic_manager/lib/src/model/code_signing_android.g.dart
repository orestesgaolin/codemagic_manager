// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing_android.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSigningAndroid _$CodeSigningAndroidFromJson(Map json) => CodeSigningAndroid(
      enabled: json['enabled'] as bool,
      keyAlias: json['keyAlias'] as String?,
      keyPassword: json['keyPassword'] as String?,
      keystore: json['keystore'] == null
          ? null
          : CodeSigningKeystore.fromJson(
              Map<String, dynamic>.from(json['keystore'] as Map)),
      keystorePassword: json['keystorePassword'] as String?,
    );

Map<String, dynamic> _$CodeSigningAndroidToJson(CodeSigningAndroid instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'keyAlias': instance.keyAlias,
      'keyPassword': instance.keyPassword,
      'keystore': instance.keystore?.toJson(),
      'keystorePassword': instance.keystorePassword,
    };
