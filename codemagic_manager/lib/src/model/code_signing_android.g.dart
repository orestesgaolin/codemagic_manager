// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing_android.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CodeSigningAndroid _$_$_CodeSigningAndroidFromJson(Map json) {
  return _$_CodeSigningAndroid(
    enabled: json['enabled'] as bool,
    keyAlias: json['keyAlias'] as String,
    keyPassword: json['keyPassword'] as String,
    keystore: json['keystore'] == null
        ? null
        : CodeSigningKeystore.fromJson((json['keystore'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    keystorePassword: json['keystorePassword'] as String,
  );
}

Map<String, dynamic> _$_$_CodeSigningAndroidToJson(
        _$_CodeSigningAndroid instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'keyAlias': instance.keyAlias,
      'keyPassword': instance.keyPassword,
      'keystore': instance.keystore?.toJson(),
      'keystorePassword': instance.keystorePassword,
    };
