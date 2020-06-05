import 'package:freezed_annotation/freezed_annotation.dart';

part 'publishers_appstore_connect.freezed.dart';
part 'publishers_appstore_connect.g.dart';

@freezed
abstract class PublishersAppstoreConnect with _$PublishersAppstoreConnect {
  factory PublishersAppstoreConnect({
    String appStoreConnectAppId,
    String appStoreConnectAppleId,
    String appStoreConnectPassword,
    bool enabled,
    bool publishWhenFail,
  }) = _PublishersAppstoreConnect;

  factory PublishersAppstoreConnect.fromJson(Map<String, dynamic> json) =>
      _$PublishersAppstoreConnectFromJson(json);
}
