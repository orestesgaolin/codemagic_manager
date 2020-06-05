// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Config _$ConfigFromJson(Map<String, dynamic> json) {
  return _Config.fromJson(json);
}

class _$ConfigTearOff {
  const _$ConfigTearOff();

  _Config call({BuildSettings buildSettings, String name}) {
    return _Config(
      buildSettings: buildSettings,
      name: name,
    );
  }
}

// ignore: unused_element
const $Config = _$ConfigTearOff();

mixin _$Config {
  BuildSettings get buildSettings;
  String get name;

  Map<String, dynamic> toJson();
  $ConfigCopyWith<Config> get copyWith;
}

abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res>;
  $Res call({BuildSettings buildSettings, String name});

  $BuildSettingsCopyWith<$Res> get buildSettings;
}

class _$ConfigCopyWithImpl<$Res> implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  final Config _value;
  // ignore: unused_field
  final $Res Function(Config) _then;

  @override
  $Res call({
    Object buildSettings = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      buildSettings: buildSettings == freezed
          ? _value.buildSettings
          : buildSettings as BuildSettings,
      name: name == freezed ? _value.name : name as String,
    ));
  }

  @override
  $BuildSettingsCopyWith<$Res> get buildSettings {
    if (_value.buildSettings == null) {
      return null;
    }
    return $BuildSettingsCopyWith<$Res>(_value.buildSettings, (value) {
      return _then(_value.copyWith(buildSettings: value));
    });
  }
}

abstract class _$ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$ConfigCopyWith(_Config value, $Res Function(_Config) then) =
      __$ConfigCopyWithImpl<$Res>;
  @override
  $Res call({BuildSettings buildSettings, String name});

  @override
  $BuildSettingsCopyWith<$Res> get buildSettings;
}

class __$ConfigCopyWithImpl<$Res> extends _$ConfigCopyWithImpl<$Res>
    implements _$ConfigCopyWith<$Res> {
  __$ConfigCopyWithImpl(_Config _value, $Res Function(_Config) _then)
      : super(_value, (v) => _then(v as _Config));

  @override
  _Config get _value => super._value as _Config;

  @override
  $Res call({
    Object buildSettings = freezed,
    Object name = freezed,
  }) {
    return _then(_Config(
      buildSettings: buildSettings == freezed
          ? _value.buildSettings
          : buildSettings as BuildSettings,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_Config implements _Config {
  _$_Config({this.buildSettings, this.name});

  factory _$_Config.fromJson(Map<String, dynamic> json) =>
      _$_$_ConfigFromJson(json);

  @override
  final BuildSettings buildSettings;
  @override
  final String name;

  @override
  String toString() {
    return 'Config(buildSettings: $buildSettings, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Config &&
            (identical(other.buildSettings, buildSettings) ||
                const DeepCollectionEquality()
                    .equals(other.buildSettings, buildSettings)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buildSettings) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$ConfigCopyWith<_Config> get copyWith =>
      __$ConfigCopyWithImpl<_Config>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConfigToJson(this);
  }
}

abstract class _Config implements Config {
  factory _Config({BuildSettings buildSettings, String name}) = _$_Config;

  factory _Config.fromJson(Map<String, dynamic> json) = _$_Config.fromJson;

  @override
  BuildSettings get buildSettings;
  @override
  String get name;
  @override
  _$ConfigCopyWith<_Config> get copyWith;
}
