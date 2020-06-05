// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers_appstore_connect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublishersAppstoreConnect _$_$_PublishersAppstoreConnectFromJson(Map json) {
  return _$_PublishersAppstoreConnect(
    appStoreConnectAppId: json['appStoreConnectAppId'] as String,
    appStoreConnectAppleId: json['appStoreConnectAppleId'] as String,
    appStoreConnectPassword: json['appStoreConnectPassword'] as String,
    enabled: json['enabled'] as bool,
    publishWhenFail: json['publishWhenFail'] as bool,
  );
}

Map<String, dynamic> _$_$_PublishersAppstoreConnectToJson(
        _$_PublishersAppstoreConnect instance) =>
    <String, dynamic>{
      'appStoreConnectAppId': instance.appStoreConnectAppId,
      'appStoreConnectAppleId': instance.appStoreConnectAppleId,
      'appStoreConnectPassword': instance.appStoreConnectPassword,
      'enabled': instance.enabled,
      'publishWhenFail': instance.publishWhenFail,
    };
