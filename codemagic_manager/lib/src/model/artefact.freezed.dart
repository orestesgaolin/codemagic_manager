// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'artefact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Artefact _$ArtefactFromJson(Map<String, dynamic> json) {
  return _Artefact.fromJson(json);
}

class _$ArtefactTearOff {
  const _$ArtefactTearOff();

  _Artefact call(
      {String md5,
      String name,
      String packageName,
      String type,
      String url,
      String versionName}) {
    return _Artefact(
      md5: md5,
      name: name,
      packageName: packageName,
      type: type,
      url: url,
      versionName: versionName,
    );
  }
}

// ignore: unused_element
const $Artefact = _$ArtefactTearOff();

mixin _$Artefact {
  String get md5;
  String get name;
  String get packageName;
  String get type;
  String get url;
  String get versionName;

  Map<String, dynamic> toJson();
  $ArtefactCopyWith<Artefact> get copyWith;
}

abstract class $ArtefactCopyWith<$Res> {
  factory $ArtefactCopyWith(Artefact value, $Res Function(Artefact) then) =
      _$ArtefactCopyWithImpl<$Res>;
  $Res call(
      {String md5,
      String name,
      String packageName,
      String type,
      String url,
      String versionName});
}

class _$ArtefactCopyWithImpl<$Res> implements $ArtefactCopyWith<$Res> {
  _$ArtefactCopyWithImpl(this._value, this._then);

  final Artefact _value;
  // ignore: unused_field
  final $Res Function(Artefact) _then;

  @override
  $Res call({
    Object md5 = freezed,
    Object name = freezed,
    Object packageName = freezed,
    Object type = freezed,
    Object url = freezed,
    Object versionName = freezed,
  }) {
    return _then(_value.copyWith(
      md5: md5 == freezed ? _value.md5 : md5 as String,
      name: name == freezed ? _value.name : name as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      type: type == freezed ? _value.type : type as String,
      url: url == freezed ? _value.url : url as String,
      versionName:
          versionName == freezed ? _value.versionName : versionName as String,
    ));
  }
}

abstract class _$ArtefactCopyWith<$Res> implements $ArtefactCopyWith<$Res> {
  factory _$ArtefactCopyWith(_Artefact value, $Res Function(_Artefact) then) =
      __$ArtefactCopyWithImpl<$Res>;
  @override
  $Res call(
      {String md5,
      String name,
      String packageName,
      String type,
      String url,
      String versionName});
}

class __$ArtefactCopyWithImpl<$Res> extends _$ArtefactCopyWithImpl<$Res>
    implements _$ArtefactCopyWith<$Res> {
  __$ArtefactCopyWithImpl(_Artefact _value, $Res Function(_Artefact) _then)
      : super(_value, (v) => _then(v as _Artefact));

  @override
  _Artefact get _value => super._value as _Artefact;

  @override
  $Res call({
    Object md5 = freezed,
    Object name = freezed,
    Object packageName = freezed,
    Object type = freezed,
    Object url = freezed,
    Object versionName = freezed,
  }) {
    return _then(_Artefact(
      md5: md5 == freezed ? _value.md5 : md5 as String,
      name: name == freezed ? _value.name : name as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      type: type == freezed ? _value.type : type as String,
      url: url == freezed ? _value.url : url as String,
      versionName:
          versionName == freezed ? _value.versionName : versionName as String,
    ));
  }
}

@JsonSerializable()
class _$_Artefact implements _Artefact {
  _$_Artefact(
      {this.md5,
      this.name,
      this.packageName,
      this.type,
      this.url,
      this.versionName});

  factory _$_Artefact.fromJson(Map<String, dynamic> json) =>
      _$_$_ArtefactFromJson(json);

  @override
  final String md5;
  @override
  final String name;
  @override
  final String packageName;
  @override
  final String type;
  @override
  final String url;
  @override
  final String versionName;

  @override
  String toString() {
    return 'Artefact(md5: $md5, name: $name, packageName: $packageName, type: $type, url: $url, versionName: $versionName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Artefact &&
            (identical(other.md5, md5) ||
                const DeepCollectionEquality().equals(other.md5, md5)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.versionName, versionName) ||
                const DeepCollectionEquality()
                    .equals(other.versionName, versionName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(md5) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(versionName);

  @override
  _$ArtefactCopyWith<_Artefact> get copyWith =>
      __$ArtefactCopyWithImpl<_Artefact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArtefactToJson(this);
  }
}

abstract class _Artefact implements Artefact {
  factory _Artefact(
      {String md5,
      String name,
      String packageName,
      String type,
      String url,
      String versionName}) = _$_Artefact;

  factory _Artefact.fromJson(Map<String, dynamic> json) = _$_Artefact.fromJson;

  @override
  String get md5;
  @override
  String get name;
  @override
  String get packageName;
  @override
  String get type;
  @override
  String get url;
  @override
  String get versionName;
  @override
  _$ArtefactCopyWith<_Artefact> get copyWith;
}
