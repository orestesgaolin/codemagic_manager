// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'publishers_github_releases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PublishersGithubReleases _$PublishersGithubReleasesFromJson(
    Map<String, dynamic> json) {
  return _PublishersGithubReleases.fromJson(json);
}

class _$PublishersGithubReleasesTearOff {
  const _$PublishersGithubReleasesTearOff();

  _PublishersGithubReleases call({bool enabled, bool prerelease}) {
    return _PublishersGithubReleases(
      enabled: enabled,
      prerelease: prerelease,
    );
  }
}

// ignore: unused_element
const $PublishersGithubReleases = _$PublishersGithubReleasesTearOff();

mixin _$PublishersGithubReleases {
  bool get enabled;
  bool get prerelease;

  Map<String, dynamic> toJson();
  $PublishersGithubReleasesCopyWith<PublishersGithubReleases> get copyWith;
}

abstract class $PublishersGithubReleasesCopyWith<$Res> {
  factory $PublishersGithubReleasesCopyWith(PublishersGithubReleases value,
          $Res Function(PublishersGithubReleases) then) =
      _$PublishersGithubReleasesCopyWithImpl<$Res>;
  $Res call({bool enabled, bool prerelease});
}

class _$PublishersGithubReleasesCopyWithImpl<$Res>
    implements $PublishersGithubReleasesCopyWith<$Res> {
  _$PublishersGithubReleasesCopyWithImpl(this._value, this._then);

  final PublishersGithubReleases _value;
  // ignore: unused_field
  final $Res Function(PublishersGithubReleases) _then;

  @override
  $Res call({
    Object enabled = freezed,
    Object prerelease = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      prerelease:
          prerelease == freezed ? _value.prerelease : prerelease as bool,
    ));
  }
}

abstract class _$PublishersGithubReleasesCopyWith<$Res>
    implements $PublishersGithubReleasesCopyWith<$Res> {
  factory _$PublishersGithubReleasesCopyWith(_PublishersGithubReleases value,
          $Res Function(_PublishersGithubReleases) then) =
      __$PublishersGithubReleasesCopyWithImpl<$Res>;
  @override
  $Res call({bool enabled, bool prerelease});
}

class __$PublishersGithubReleasesCopyWithImpl<$Res>
    extends _$PublishersGithubReleasesCopyWithImpl<$Res>
    implements _$PublishersGithubReleasesCopyWith<$Res> {
  __$PublishersGithubReleasesCopyWithImpl(_PublishersGithubReleases _value,
      $Res Function(_PublishersGithubReleases) _then)
      : super(_value, (v) => _then(v as _PublishersGithubReleases));

  @override
  _PublishersGithubReleases get _value =>
      super._value as _PublishersGithubReleases;

  @override
  $Res call({
    Object enabled = freezed,
    Object prerelease = freezed,
  }) {
    return _then(_PublishersGithubReleases(
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      prerelease:
          prerelease == freezed ? _value.prerelease : prerelease as bool,
    ));
  }
}

@JsonSerializable()
class _$_PublishersGithubReleases implements _PublishersGithubReleases {
  _$_PublishersGithubReleases({this.enabled, this.prerelease});

  factory _$_PublishersGithubReleases.fromJson(Map<String, dynamic> json) =>
      _$_$_PublishersGithubReleasesFromJson(json);

  @override
  final bool enabled;
  @override
  final bool prerelease;

  @override
  String toString() {
    return 'PublishersGithubReleases(enabled: $enabled, prerelease: $prerelease)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublishersGithubReleases &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.prerelease, prerelease) ||
                const DeepCollectionEquality()
                    .equals(other.prerelease, prerelease)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(prerelease);

  @override
  _$PublishersGithubReleasesCopyWith<_PublishersGithubReleases> get copyWith =>
      __$PublishersGithubReleasesCopyWithImpl<_PublishersGithubReleases>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublishersGithubReleasesToJson(this);
  }
}

abstract class _PublishersGithubReleases implements PublishersGithubReleases {
  factory _PublishersGithubReleases({bool enabled, bool prerelease}) =
      _$_PublishersGithubReleases;

  factory _PublishersGithubReleases.fromJson(Map<String, dynamic> json) =
      _$_PublishersGithubReleases.fromJson;

  @override
  bool get enabled;
  @override
  bool get prerelease;
  @override
  _$PublishersGithubReleasesCopyWith<_PublishersGithubReleases> get copyWith;
}
