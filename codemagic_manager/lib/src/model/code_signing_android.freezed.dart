// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'code_signing_android.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CodeSigningAndroid _$CodeSigningAndroidFromJson(Map<String, dynamic> json) {
  return _CodeSigningAndroid.fromJson(json);
}

class _$CodeSigningAndroidTearOff {
  const _$CodeSigningAndroidTearOff();

  _CodeSigningAndroid call(
      {bool enabled,
      String keyAlias,
      String keyPassword,
      CodeSigningKeystore keystore,
      String keystorePassword}) {
    return _CodeSigningAndroid(
      enabled: enabled,
      keyAlias: keyAlias,
      keyPassword: keyPassword,
      keystore: keystore,
      keystorePassword: keystorePassword,
    );
  }
}

// ignore: unused_element
const $CodeSigningAndroid = _$CodeSigningAndroidTearOff();

mixin _$CodeSigningAndroid {
  bool get enabled;
  String get keyAlias;
  String get keyPassword;
  CodeSigningKeystore get keystore;
  String get keystorePassword;

  Map<String, dynamic> toJson();
  $CodeSigningAndroidCopyWith<CodeSigningAndroid> get copyWith;
}

abstract class $CodeSigningAndroidCopyWith<$Res> {
  factory $CodeSigningAndroidCopyWith(
          CodeSigningAndroid value, $Res Function(CodeSigningAndroid) then) =
      _$CodeSigningAndroidCopyWithImpl<$Res>;
  $Res call(
      {bool enabled,
      String keyAlias,
      String keyPassword,
      CodeSigningKeystore keystore,
      String keystorePassword});

  $CodeSigningKeystoreCopyWith<$Res> get keystore;
}

class _$CodeSigningAndroidCopyWithImpl<$Res>
    implements $CodeSigningAndroidCopyWith<$Res> {
  _$CodeSigningAndroidCopyWithImpl(this._value, this._then);

  final CodeSigningAndroid _value;
  // ignore: unused_field
  final $Res Function(CodeSigningAndroid) _then;

  @override
  $Res call({
    Object enabled = freezed,
    Object keyAlias = freezed,
    Object keyPassword = freezed,
    Object keystore = freezed,
    Object keystorePassword = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      keyAlias: keyAlias == freezed ? _value.keyAlias : keyAlias as String,
      keyPassword:
          keyPassword == freezed ? _value.keyPassword : keyPassword as String,
      keystore: keystore == freezed
          ? _value.keystore
          : keystore as CodeSigningKeystore,
      keystorePassword: keystorePassword == freezed
          ? _value.keystorePassword
          : keystorePassword as String,
    ));
  }

  @override
  $CodeSigningKeystoreCopyWith<$Res> get keystore {
    if (_value.keystore == null) {
      return null;
    }
    return $CodeSigningKeystoreCopyWith<$Res>(_value.keystore, (value) {
      return _then(_value.copyWith(keystore: value));
    });
  }
}

abstract class _$CodeSigningAndroidCopyWith<$Res>
    implements $CodeSigningAndroidCopyWith<$Res> {
  factory _$CodeSigningAndroidCopyWith(
          _CodeSigningAndroid value, $Res Function(_CodeSigningAndroid) then) =
      __$CodeSigningAndroidCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool enabled,
      String keyAlias,
      String keyPassword,
      CodeSigningKeystore keystore,
      String keystorePassword});

  @override
  $CodeSigningKeystoreCopyWith<$Res> get keystore;
}

class __$CodeSigningAndroidCopyWithImpl<$Res>
    extends _$CodeSigningAndroidCopyWithImpl<$Res>
    implements _$CodeSigningAndroidCopyWith<$Res> {
  __$CodeSigningAndroidCopyWithImpl(
      _CodeSigningAndroid _value, $Res Function(_CodeSigningAndroid) _then)
      : super(_value, (v) => _then(v as _CodeSigningAndroid));

  @override
  _CodeSigningAndroid get _value => super._value as _CodeSigningAndroid;

  @override
  $Res call({
    Object enabled = freezed,
    Object keyAlias = freezed,
    Object keyPassword = freezed,
    Object keystore = freezed,
    Object keystorePassword = freezed,
  }) {
    return _then(_CodeSigningAndroid(
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      keyAlias: keyAlias == freezed ? _value.keyAlias : keyAlias as String,
      keyPassword:
          keyPassword == freezed ? _value.keyPassword : keyPassword as String,
      keystore: keystore == freezed
          ? _value.keystore
          : keystore as CodeSigningKeystore,
      keystorePassword: keystorePassword == freezed
          ? _value.keystorePassword
          : keystorePassword as String,
    ));
  }
}

@JsonSerializable()
class _$_CodeSigningAndroid implements _CodeSigningAndroid {
  _$_CodeSigningAndroid(
      {this.enabled,
      this.keyAlias,
      this.keyPassword,
      this.keystore,
      this.keystorePassword});

  factory _$_CodeSigningAndroid.fromJson(Map<String, dynamic> json) =>
      _$_$_CodeSigningAndroidFromJson(json);

  @override
  final bool enabled;
  @override
  final String keyAlias;
  @override
  final String keyPassword;
  @override
  final CodeSigningKeystore keystore;
  @override
  final String keystorePassword;

  @override
  String toString() {
    return 'CodeSigningAndroid(enabled: $enabled, keyAlias: $keyAlias, keyPassword: $keyPassword, keystore: $keystore, keystorePassword: $keystorePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSigningAndroid &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.keyAlias, keyAlias) ||
                const DeepCollectionEquality()
                    .equals(other.keyAlias, keyAlias)) &&
            (identical(other.keyPassword, keyPassword) ||
                const DeepCollectionEquality()
                    .equals(other.keyPassword, keyPassword)) &&
            (identical(other.keystore, keystore) ||
                const DeepCollectionEquality()
                    .equals(other.keystore, keystore)) &&
            (identical(other.keystorePassword, keystorePassword) ||
                const DeepCollectionEquality()
                    .equals(other.keystorePassword, keystorePassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(keyAlias) ^
      const DeepCollectionEquality().hash(keyPassword) ^
      const DeepCollectionEquality().hash(keystore) ^
      const DeepCollectionEquality().hash(keystorePassword);

  @override
  _$CodeSigningAndroidCopyWith<_CodeSigningAndroid> get copyWith =>
      __$CodeSigningAndroidCopyWithImpl<_CodeSigningAndroid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodeSigningAndroidToJson(this);
  }
}

abstract class _CodeSigningAndroid implements CodeSigningAndroid {
  factory _CodeSigningAndroid(
      {bool enabled,
      String keyAlias,
      String keyPassword,
      CodeSigningKeystore keystore,
      String keystorePassword}) = _$_CodeSigningAndroid;

  factory _CodeSigningAndroid.fromJson(Map<String, dynamic> json) =
      _$_CodeSigningAndroid.fromJson;

  @override
  bool get enabled;
  @override
  String get keyAlias;
  @override
  String get keyPassword;
  @override
  CodeSigningKeystore get keystore;
  @override
  String get keystorePassword;
  @override
  _$CodeSigningAndroidCopyWith<_CodeSigningAndroid> get copyWith;
}
