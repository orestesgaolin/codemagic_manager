// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'publishers_appstore_connect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PublishersAppstoreConnect _$PublishersAppstoreConnectFromJson(
    Map<String, dynamic> json) {
  return _PublishersAppstoreConnect.fromJson(json);
}

class _$PublishersAppstoreConnectTearOff {
  const _$PublishersAppstoreConnectTearOff();

  _PublishersAppstoreConnect call(
      {String appStoreConnectAppId,
      String appStoreConnectAppleId,
      String appStoreConnectPassword,
      bool enabled,
      bool publishWhenFail}) {
    return _PublishersAppstoreConnect(
      appStoreConnectAppId: appStoreConnectAppId,
      appStoreConnectAppleId: appStoreConnectAppleId,
      appStoreConnectPassword: appStoreConnectPassword,
      enabled: enabled,
      publishWhenFail: publishWhenFail,
    );
  }
}

// ignore: unused_element
const $PublishersAppstoreConnect = _$PublishersAppstoreConnectTearOff();

mixin _$PublishersAppstoreConnect {
  String get appStoreConnectAppId;
  String get appStoreConnectAppleId;
  String get appStoreConnectPassword;
  bool get enabled;
  bool get publishWhenFail;

  Map<String, dynamic> toJson();
  $PublishersAppstoreConnectCopyWith<PublishersAppstoreConnect> get copyWith;
}

abstract class $PublishersAppstoreConnectCopyWith<$Res> {
  factory $PublishersAppstoreConnectCopyWith(PublishersAppstoreConnect value,
          $Res Function(PublishersAppstoreConnect) then) =
      _$PublishersAppstoreConnectCopyWithImpl<$Res>;
  $Res call(
      {String appStoreConnectAppId,
      String appStoreConnectAppleId,
      String appStoreConnectPassword,
      bool enabled,
      bool publishWhenFail});
}

class _$PublishersAppstoreConnectCopyWithImpl<$Res>
    implements $PublishersAppstoreConnectCopyWith<$Res> {
  _$PublishersAppstoreConnectCopyWithImpl(this._value, this._then);

  final PublishersAppstoreConnect _value;
  // ignore: unused_field
  final $Res Function(PublishersAppstoreConnect) _then;

  @override
  $Res call({
    Object appStoreConnectAppId = freezed,
    Object appStoreConnectAppleId = freezed,
    Object appStoreConnectPassword = freezed,
    Object enabled = freezed,
    Object publishWhenFail = freezed,
  }) {
    return _then(_value.copyWith(
      appStoreConnectAppId: appStoreConnectAppId == freezed
          ? _value.appStoreConnectAppId
          : appStoreConnectAppId as String,
      appStoreConnectAppleId: appStoreConnectAppleId == freezed
          ? _value.appStoreConnectAppleId
          : appStoreConnectAppleId as String,
      appStoreConnectPassword: appStoreConnectPassword == freezed
          ? _value.appStoreConnectPassword
          : appStoreConnectPassword as String,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      publishWhenFail: publishWhenFail == freezed
          ? _value.publishWhenFail
          : publishWhenFail as bool,
    ));
  }
}

abstract class _$PublishersAppstoreConnectCopyWith<$Res>
    implements $PublishersAppstoreConnectCopyWith<$Res> {
  factory _$PublishersAppstoreConnectCopyWith(_PublishersAppstoreConnect value,
          $Res Function(_PublishersAppstoreConnect) then) =
      __$PublishersAppstoreConnectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appStoreConnectAppId,
      String appStoreConnectAppleId,
      String appStoreConnectPassword,
      bool enabled,
      bool publishWhenFail});
}

class __$PublishersAppstoreConnectCopyWithImpl<$Res>
    extends _$PublishersAppstoreConnectCopyWithImpl<$Res>
    implements _$PublishersAppstoreConnectCopyWith<$Res> {
  __$PublishersAppstoreConnectCopyWithImpl(_PublishersAppstoreConnect _value,
      $Res Function(_PublishersAppstoreConnect) _then)
      : super(_value, (v) => _then(v as _PublishersAppstoreConnect));

  @override
  _PublishersAppstoreConnect get _value =>
      super._value as _PublishersAppstoreConnect;

  @override
  $Res call({
    Object appStoreConnectAppId = freezed,
    Object appStoreConnectAppleId = freezed,
    Object appStoreConnectPassword = freezed,
    Object enabled = freezed,
    Object publishWhenFail = freezed,
  }) {
    return _then(_PublishersAppstoreConnect(
      appStoreConnectAppId: appStoreConnectAppId == freezed
          ? _value.appStoreConnectAppId
          : appStoreConnectAppId as String,
      appStoreConnectAppleId: appStoreConnectAppleId == freezed
          ? _value.appStoreConnectAppleId
          : appStoreConnectAppleId as String,
      appStoreConnectPassword: appStoreConnectPassword == freezed
          ? _value.appStoreConnectPassword
          : appStoreConnectPassword as String,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      publishWhenFail: publishWhenFail == freezed
          ? _value.publishWhenFail
          : publishWhenFail as bool,
    ));
  }
}

@JsonSerializable()
class _$_PublishersAppstoreConnect implements _PublishersAppstoreConnect {
  _$_PublishersAppstoreConnect(
      {this.appStoreConnectAppId,
      this.appStoreConnectAppleId,
      this.appStoreConnectPassword,
      this.enabled,
      this.publishWhenFail});

  factory _$_PublishersAppstoreConnect.fromJson(Map<String, dynamic> json) =>
      _$_$_PublishersAppstoreConnectFromJson(json);

  @override
  final String appStoreConnectAppId;
  @override
  final String appStoreConnectAppleId;
  @override
  final String appStoreConnectPassword;
  @override
  final bool enabled;
  @override
  final bool publishWhenFail;

  @override
  String toString() {
    return 'PublishersAppstoreConnect(appStoreConnectAppId: $appStoreConnectAppId, appStoreConnectAppleId: $appStoreConnectAppleId, appStoreConnectPassword: $appStoreConnectPassword, enabled: $enabled, publishWhenFail: $publishWhenFail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublishersAppstoreConnect &&
            (identical(other.appStoreConnectAppId, appStoreConnectAppId) ||
                const DeepCollectionEquality().equals(
                    other.appStoreConnectAppId, appStoreConnectAppId)) &&
            (identical(other.appStoreConnectAppleId, appStoreConnectAppleId) ||
                const DeepCollectionEquality().equals(
                    other.appStoreConnectAppleId, appStoreConnectAppleId)) &&
            (identical(
                    other.appStoreConnectPassword, appStoreConnectPassword) ||
                const DeepCollectionEquality().equals(
                    other.appStoreConnectPassword, appStoreConnectPassword)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.publishWhenFail, publishWhenFail) ||
                const DeepCollectionEquality()
                    .equals(other.publishWhenFail, publishWhenFail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appStoreConnectAppId) ^
      const DeepCollectionEquality().hash(appStoreConnectAppleId) ^
      const DeepCollectionEquality().hash(appStoreConnectPassword) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(publishWhenFail);

  @override
  _$PublishersAppstoreConnectCopyWith<_PublishersAppstoreConnect>
      get copyWith =>
          __$PublishersAppstoreConnectCopyWithImpl<_PublishersAppstoreConnect>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublishersAppstoreConnectToJson(this);
  }
}

abstract class _PublishersAppstoreConnect implements PublishersAppstoreConnect {
  factory _PublishersAppstoreConnect(
      {String appStoreConnectAppId,
      String appStoreConnectAppleId,
      String appStoreConnectPassword,
      bool enabled,
      bool publishWhenFail}) = _$_PublishersAppstoreConnect;

  factory _PublishersAppstoreConnect.fromJson(Map<String, dynamic> json) =
      _$_PublishersAppstoreConnect.fromJson;

  @override
  String get appStoreConnectAppId;
  @override
  String get appStoreConnectAppleId;
  @override
  String get appStoreConnectPassword;
  @override
  bool get enabled;
  @override
  bool get publishWhenFail;
  @override
  _$PublishersAppstoreConnectCopyWith<_PublishersAppstoreConnect> get copyWith;
}
