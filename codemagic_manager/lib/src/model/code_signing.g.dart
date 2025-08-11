// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_signing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSigning _$CodeSigningFromJson(Map json) => CodeSigning(
      android: json['android'] == null
          ? null
          : CodeSigningAndroid.fromJson(
              Map<String, dynamic>.from(json['android'] as Map)),
      ios: json['ios'] == null
          ? null
          : CodeSigningIos.fromJson(
              Map<String, dynamic>.from(json['ios'] as Map)),
    );

Map<String, dynamic> _$CodeSigningToJson(CodeSigning instance) =>
    <String, dynamic>{
      'android': instance.android?.toJson(),
      'ios': instance.ios?.toJson(),
    };
