// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers_appstore_connect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublishersAppstoreConnect _$PublishersAppstoreConnectFromJson(Map json) {
  return PublishersAppstoreConnect(
    appStoreConnectAppId: json['appStoreConnectAppId'] as String?,
    appStoreConnectAppleId: json['appStoreConnectAppleId'] as String?,
    appStoreConnectPassword: json['appStoreConnectPassword'] as String?,
    enabled: json['enabled'] as bool? ?? false,
    publishWhenFail: json['publishWhenFail'] as bool? ?? false,
  );
}

Map<String, dynamic> _$PublishersAppstoreConnectToJson(
        PublishersAppstoreConnect instance) =>
    <String, dynamic>{
      'appStoreConnectAppId': instance.appStoreConnectAppId,
      'appStoreConnectAppleId': instance.appStoreConnectAppleId,
      'appStoreConnectPassword': instance.appStoreConnectPassword,
      'enabled': instance.enabled,
      'publishWhenFail': instance.publishWhenFail,
    };
