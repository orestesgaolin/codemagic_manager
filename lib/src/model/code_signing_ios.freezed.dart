// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'code_signing_ios.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CodeSigningIos _$CodeSigningIosFromJson(Map<String, dynamic> json) {
  return _CodeSigningIos.fromJson(json);
}

class _$CodeSigningIosTearOff {
  const _$CodeSigningIosTearOff();

  _CodeSigningIos call(
      {String certificatePassword,
      CodeSigningKeystore developerCertificate,
      String developerPortalBundleIdentifier,
      String developerPortalPassword,
      String developerPortalProfileType,
      String developerPortalTeamId,
      String developerPortalUsername,
      bool enabled,
      bool encryptedKey}) {
    return _CodeSigningIos(
      certificatePassword: certificatePassword,
      developerCertificate: developerCertificate,
      developerPortalBundleIdentifier: developerPortalBundleIdentifier,
      developerPortalPassword: developerPortalPassword,
      developerPortalProfileType: developerPortalProfileType,
      developerPortalTeamId: developerPortalTeamId,
      developerPortalUsername: developerPortalUsername,
      enabled: enabled,
      encryptedKey: encryptedKey,
    );
  }
}

// ignore: unused_element
const $CodeSigningIos = _$CodeSigningIosTearOff();

mixin _$CodeSigningIos {
  String get certificatePassword;
  CodeSigningKeystore get developerCertificate;
  String get developerPortalBundleIdentifier;
  String get developerPortalPassword;
  String get developerPortalProfileType;
  String get developerPortalTeamId;
  String get developerPortalUsername;
  bool get enabled;
  bool get encryptedKey;

  Map<String, dynamic> toJson();
  $CodeSigningIosCopyWith<CodeSigningIos> get copyWith;
}

abstract class $CodeSigningIosCopyWith<$Res> {
  factory $CodeSigningIosCopyWith(
          CodeSigningIos value, $Res Function(CodeSigningIos) then) =
      _$CodeSigningIosCopyWithImpl<$Res>;
  $Res call(
      {String certificatePassword,
      CodeSigningKeystore developerCertificate,
      String developerPortalBundleIdentifier,
      String developerPortalPassword,
      String developerPortalProfileType,
      String developerPortalTeamId,
      String developerPortalUsername,
      bool enabled,
      bool encryptedKey});

  $CodeSigningKeystoreCopyWith<$Res> get developerCertificate;
}

class _$CodeSigningIosCopyWithImpl<$Res>
    implements $CodeSigningIosCopyWith<$Res> {
  _$CodeSigningIosCopyWithImpl(this._value, this._then);

  final CodeSigningIos _value;
  // ignore: unused_field
  final $Res Function(CodeSigningIos) _then;

  @override
  $Res call({
    Object certificatePassword = freezed,
    Object developerCertificate = freezed,
    Object developerPortalBundleIdentifier = freezed,
    Object developerPortalPassword = freezed,
    Object developerPortalProfileType = freezed,
    Object developerPortalTeamId = freezed,
    Object developerPortalUsername = freezed,
    Object enabled = freezed,
    Object encryptedKey = freezed,
  }) {
    return _then(_value.copyWith(
      certificatePassword: certificatePassword == freezed
          ? _value.certificatePassword
          : certificatePassword as String,
      developerCertificate: developerCertificate == freezed
          ? _value.developerCertificate
          : developerCertificate as CodeSigningKeystore,
      developerPortalBundleIdentifier:
          developerPortalBundleIdentifier == freezed
              ? _value.developerPortalBundleIdentifier
              : developerPortalBundleIdentifier as String,
      developerPortalPassword: developerPortalPassword == freezed
          ? _value.developerPortalPassword
          : developerPortalPassword as String,
      developerPortalProfileType: developerPortalProfileType == freezed
          ? _value.developerPortalProfileType
          : developerPortalProfileType as String,
      developerPortalTeamId: developerPortalTeamId == freezed
          ? _value.developerPortalTeamId
          : developerPortalTeamId as String,
      developerPortalUsername: developerPortalUsername == freezed
          ? _value.developerPortalUsername
          : developerPortalUsername as String,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      encryptedKey:
          encryptedKey == freezed ? _value.encryptedKey : encryptedKey as bool,
    ));
  }

  @override
  $CodeSigningKeystoreCopyWith<$Res> get developerCertificate {
    if (_value.developerCertificate == null) {
      return null;
    }
    return $CodeSigningKeystoreCopyWith<$Res>(_value.developerCertificate,
        (value) {
      return _then(_value.copyWith(developerCertificate: value));
    });
  }
}

abstract class _$CodeSigningIosCopyWith<$Res>
    implements $CodeSigningIosCopyWith<$Res> {
  factory _$CodeSigningIosCopyWith(
          _CodeSigningIos value, $Res Function(_CodeSigningIos) then) =
      __$CodeSigningIosCopyWithImpl<$Res>;
  @override
  $Res call(
      {String certificatePassword,
      CodeSigningKeystore developerCertificate,
      String developerPortalBundleIdentifier,
      String developerPortalPassword,
      String developerPortalProfileType,
      String developerPortalTeamId,
      String developerPortalUsername,
      bool enabled,
      bool encryptedKey});

  @override
  $CodeSigningKeystoreCopyWith<$Res> get developerCertificate;
}

class __$CodeSigningIosCopyWithImpl<$Res>
    extends _$CodeSigningIosCopyWithImpl<$Res>
    implements _$CodeSigningIosCopyWith<$Res> {
  __$CodeSigningIosCopyWithImpl(
      _CodeSigningIos _value, $Res Function(_CodeSigningIos) _then)
      : super(_value, (v) => _then(v as _CodeSigningIos));

  @override
  _CodeSigningIos get _value => super._value as _CodeSigningIos;

  @override
  $Res call({
    Object certificatePassword = freezed,
    Object developerCertificate = freezed,
    Object developerPortalBundleIdentifier = freezed,
    Object developerPortalPassword = freezed,
    Object developerPortalProfileType = freezed,
    Object developerPortalTeamId = freezed,
    Object developerPortalUsername = freezed,
    Object enabled = freezed,
    Object encryptedKey = freezed,
  }) {
    return _then(_CodeSigningIos(
      certificatePassword: certificatePassword == freezed
          ? _value.certificatePassword
          : certificatePassword as String,
      developerCertificate: developerCertificate == freezed
          ? _value.developerCertificate
          : developerCertificate as CodeSigningKeystore,
      developerPortalBundleIdentifier:
          developerPortalBundleIdentifier == freezed
              ? _value.developerPortalBundleIdentifier
              : developerPortalBundleIdentifier as String,
      developerPortalPassword: developerPortalPassword == freezed
          ? _value.developerPortalPassword
          : developerPortalPassword as String,
      developerPortalProfileType: developerPortalProfileType == freezed
          ? _value.developerPortalProfileType
          : developerPortalProfileType as String,
      developerPortalTeamId: developerPortalTeamId == freezed
          ? _value.developerPortalTeamId
          : developerPortalTeamId as String,
      developerPortalUsername: developerPortalUsername == freezed
          ? _value.developerPortalUsername
          : developerPortalUsername as String,
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      encryptedKey:
          encryptedKey == freezed ? _value.encryptedKey : encryptedKey as bool,
    ));
  }
}

@JsonSerializable()
class _$_CodeSigningIos implements _CodeSigningIos {
  _$_CodeSigningIos(
      {this.certificatePassword,
      this.developerCertificate,
      this.developerPortalBundleIdentifier,
      this.developerPortalPassword,
      this.developerPortalProfileType,
      this.developerPortalTeamId,
      this.developerPortalUsername,
      this.enabled,
      this.encryptedKey});

  factory _$_CodeSigningIos.fromJson(Map<String, dynamic> json) =>
      _$_$_CodeSigningIosFromJson(json);

  @override
  final String certificatePassword;
  @override
  final CodeSigningKeystore developerCertificate;
  @override
  final String developerPortalBundleIdentifier;
  @override
  final String developerPortalPassword;
  @override
  final String developerPortalProfileType;
  @override
  final String developerPortalTeamId;
  @override
  final String developerPortalUsername;
  @override
  final bool enabled;
  @override
  final bool encryptedKey;

  @override
  String toString() {
    return 'CodeSigningIos(certificatePassword: $certificatePassword, developerCertificate: $developerCertificate, developerPortalBundleIdentifier: $developerPortalBundleIdentifier, developerPortalPassword: $developerPortalPassword, developerPortalProfileType: $developerPortalProfileType, developerPortalTeamId: $developerPortalTeamId, developerPortalUsername: $developerPortalUsername, enabled: $enabled, encryptedKey: $encryptedKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSigningIos &&
            (identical(other.certificatePassword, certificatePassword) ||
                const DeepCollectionEquality()
                    .equals(other.certificatePassword, certificatePassword)) &&
            (identical(other.developerCertificate, developerCertificate) ||
                const DeepCollectionEquality().equals(
                    other.developerCertificate, developerCertificate)) &&
            (identical(other.developerPortalBundleIdentifier,
                    developerPortalBundleIdentifier) ||
                const DeepCollectionEquality().equals(
                    other.developerPortalBundleIdentifier,
                    developerPortalBundleIdentifier)) &&
            (identical(other.developerPortalPassword, developerPortalPassword) ||
                const DeepCollectionEquality().equals(
                    other.developerPortalPassword, developerPortalPassword)) &&
            (identical(other.developerPortalProfileType, developerPortalProfileType) ||
                const DeepCollectionEquality().equals(
                    other.developerPortalProfileType,
                    developerPortalProfileType)) &&
            (identical(other.developerPortalTeamId, developerPortalTeamId) ||
                const DeepCollectionEquality().equals(
                    other.developerPortalTeamId, developerPortalTeamId)) &&
            (identical(
                    other.developerPortalUsername, developerPortalUsername) ||
                const DeepCollectionEquality().equals(
                    other.developerPortalUsername, developerPortalUsername)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.encryptedKey, encryptedKey) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedKey, encryptedKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(certificatePassword) ^
      const DeepCollectionEquality().hash(developerCertificate) ^
      const DeepCollectionEquality().hash(developerPortalBundleIdentifier) ^
      const DeepCollectionEquality().hash(developerPortalPassword) ^
      const DeepCollectionEquality().hash(developerPortalProfileType) ^
      const DeepCollectionEquality().hash(developerPortalTeamId) ^
      const DeepCollectionEquality().hash(developerPortalUsername) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(encryptedKey);

  @override
  _$CodeSigningIosCopyWith<_CodeSigningIos> get copyWith =>
      __$CodeSigningIosCopyWithImpl<_CodeSigningIos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodeSigningIosToJson(this);
  }
}

abstract class _CodeSigningIos implements CodeSigningIos {
  factory _CodeSigningIos(
      {String certificatePassword,
      CodeSigningKeystore developerCertificate,
      String developerPortalBundleIdentifier,
      String developerPortalPassword,
      String developerPortalProfileType,
      String developerPortalTeamId,
      String developerPortalUsername,
      bool enabled,
      bool encryptedKey}) = _$_CodeSigningIos;

  factory _CodeSigningIos.fromJson(Map<String, dynamic> json) =
      _$_CodeSigningIos.fromJson;

  @override
  String get certificatePassword;
  @override
  CodeSigningKeystore get developerCertificate;
  @override
  String get developerPortalBundleIdentifier;
  @override
  String get developerPortalPassword;
  @override
  String get developerPortalProfileType;
  @override
  String get developerPortalTeamId;
  @override
  String get developerPortalUsername;
  @override
  bool get enabled;
  @override
  bool get encryptedKey;
  @override
  _$CodeSigningIosCopyWith<_CodeSigningIos> get copyWith;
}
