// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CodeSigning _$_$_CodeSigningFromJson(Map json) {
  return _$_CodeSigning(
    android: json['android'] == null
        ? null
        : CodeSigningAndroid.fromJson((json['android'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    ios: json['ios'] == null
        ? null
        : CodeSigningIos.fromJson((json['ios'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
  );
}

Map<String, dynamic> _$_$_CodeSigningToJson(_$_CodeSigning instance) =>
    <String, dynamic>{
      'android': instance.android?.toJson(),
      'ios': instance.ios?.toJson(),
    };
