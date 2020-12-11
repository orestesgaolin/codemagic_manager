import 'package:json_annotation/json_annotation.dart';

part 'publishers_appstore_connect.g.dart';

@JsonSerializable()
class PublishersAppstoreConnect {
  PublishersAppstoreConnect({
    this.appStoreConnectAppId,
    this.appStoreConnectAppleId,
    this.appStoreConnectPassword,
    required this.enabled,
    required this.publishWhenFail,
  });

  final String? appStoreConnectAppId;
  final String? appStoreConnectAppleId;
  final String? appStoreConnectPassword;
  @JsonKey(defaultValue: false)
  final bool enabled;
  @JsonKey(defaultValue: false)
  final bool publishWhenFail;

  factory PublishersAppstoreConnect.fromJson(Map<String, dynamic> json) =>
      _$PublishersAppstoreConnectFromJson(json);

  Map<String, dynamic> toJson() => _$PublishersAppstoreConnectToJson(this);
}
