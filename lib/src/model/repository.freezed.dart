// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

class _$RepositoryTearOff {
  const _$RepositoryTearOff();

  _Repository call(
      {String defaultBranch,
      String htmlUrl,
      @JsonKey(fromJson: Repository.idFromJson) String id,
      bool isAuthenticationEnabled,
      String language,
      Owner owner,
      String provider,
      String publicSshKey,
      String username}) {
    return _Repository(
      defaultBranch: defaultBranch,
      htmlUrl: htmlUrl,
      id: id,
      isAuthenticationEnabled: isAuthenticationEnabled,
      language: language,
      owner: owner,
      provider: provider,
      publicSshKey: publicSshKey,
      username: username,
    );
  }
}

// ignore: unused_element
const $Repository = _$RepositoryTearOff();

mixin _$Repository {
  String get defaultBranch;
  String get htmlUrl;
  @JsonKey(fromJson: Repository.idFromJson)
  String get id;
  bool get isAuthenticationEnabled;
  String get language;
  Owner get owner;
  String get provider;
  String get publicSshKey;
  String get username;

  Map<String, dynamic> toJson();
  $RepositoryCopyWith<Repository> get copyWith;
}

abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res>;
  $Res call(
      {String defaultBranch,
      String htmlUrl,
      @JsonKey(fromJson: Repository.idFromJson) String id,
      bool isAuthenticationEnabled,
      String language,
      Owner owner,
      String provider,
      String publicSshKey,
      String username});

  $OwnerCopyWith<$Res> get owner;
}

class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

  @override
  $Res call({
    Object defaultBranch = freezed,
    Object htmlUrl = freezed,
    Object id = freezed,
    Object isAuthenticationEnabled = freezed,
    Object language = freezed,
    Object owner = freezed,
    Object provider = freezed,
    Object publicSshKey = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      defaultBranch: defaultBranch == freezed
          ? _value.defaultBranch
          : defaultBranch as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
      id: id == freezed ? _value.id : id as String,
      isAuthenticationEnabled: isAuthenticationEnabled == freezed
          ? _value.isAuthenticationEnabled
          : isAuthenticationEnabled as bool,
      language: language == freezed ? _value.language : language as String,
      owner: owner == freezed ? _value.owner : owner as Owner,
      provider: provider == freezed ? _value.provider : provider as String,
      publicSshKey: publicSshKey == freezed
          ? _value.publicSshKey
          : publicSshKey as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    if (_value.owner == null) {
      return null;
    }
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

abstract class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(
          _Repository value, $Res Function(_Repository) then) =
      __$RepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String defaultBranch,
      String htmlUrl,
      @JsonKey(fromJson: Repository.idFromJson) String id,
      bool isAuthenticationEnabled,
      String language,
      Owner owner,
      String provider,
      String publicSshKey,
      String username});

  @override
  $OwnerCopyWith<$Res> get owner;
}

class __$RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(
      _Repository _value, $Res Function(_Repository) _then)
      : super(_value, (v) => _then(v as _Repository));

  @override
  _Repository get _value => super._value as _Repository;

  @override
  $Res call({
    Object defaultBranch = freezed,
    Object htmlUrl = freezed,
    Object id = freezed,
    Object isAuthenticationEnabled = freezed,
    Object language = freezed,
    Object owner = freezed,
    Object provider = freezed,
    Object publicSshKey = freezed,
    Object username = freezed,
  }) {
    return _then(_Repository(
      defaultBranch: defaultBranch == freezed
          ? _value.defaultBranch
          : defaultBranch as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
      id: id == freezed ? _value.id : id as String,
      isAuthenticationEnabled: isAuthenticationEnabled == freezed
          ? _value.isAuthenticationEnabled
          : isAuthenticationEnabled as bool,
      language: language == freezed ? _value.language : language as String,
      owner: owner == freezed ? _value.owner : owner as Owner,
      provider: provider == freezed ? _value.provider : provider as String,
      publicSshKey: publicSshKey == freezed
          ? _value.publicSshKey
          : publicSshKey as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

@JsonSerializable()
class _$_Repository implements _Repository {
  _$_Repository(
      {this.defaultBranch,
      this.htmlUrl,
      @JsonKey(fromJson: Repository.idFromJson) this.id,
      this.isAuthenticationEnabled,
      this.language,
      this.owner,
      this.provider,
      this.publicSshKey,
      this.username});

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryFromJson(json);

  @override
  final String defaultBranch;
  @override
  final String htmlUrl;
  @override
  @JsonKey(fromJson: Repository.idFromJson)
  final String id;
  @override
  final bool isAuthenticationEnabled;
  @override
  final String language;
  @override
  final Owner owner;
  @override
  final String provider;
  @override
  final String publicSshKey;
  @override
  final String username;

  @override
  String toString() {
    return 'Repository(defaultBranch: $defaultBranch, htmlUrl: $htmlUrl, id: $id, isAuthenticationEnabled: $isAuthenticationEnabled, language: $language, owner: $owner, provider: $provider, publicSshKey: $publicSshKey, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Repository &&
            (identical(other.defaultBranch, defaultBranch) ||
                const DeepCollectionEquality()
                    .equals(other.defaultBranch, defaultBranch)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(
                    other.isAuthenticationEnabled, isAuthenticationEnabled) ||
                const DeepCollectionEquality().equals(
                    other.isAuthenticationEnabled, isAuthenticationEnabled)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.publicSshKey, publicSshKey) ||
                const DeepCollectionEquality()
                    .equals(other.publicSshKey, publicSshKey)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(defaultBranch) ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isAuthenticationEnabled) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(publicSshKey) ^
      const DeepCollectionEquality().hash(username);

  @override
  _$RepositoryCopyWith<_Repository> get copyWith =>
      __$RepositoryCopyWithImpl<_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryToJson(this);
  }
}

abstract class _Repository implements Repository {
  factory _Repository(
      {String defaultBranch,
      String htmlUrl,
      @JsonKey(fromJson: Repository.idFromJson) String id,
      bool isAuthenticationEnabled,
      String language,
      Owner owner,
      String provider,
      String publicSshKey,
      String username}) = _$_Repository;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override
  String get defaultBranch;
  @override
  String get htmlUrl;
  @override
  @JsonKey(fromJson: Repository.idFromJson)
  String get id;
  @override
  bool get isAuthenticationEnabled;
  @override
  String get language;
  @override
  Owner get owner;
  @override
  String get provider;
  @override
  String get publicSshKey;
  @override
  String get username;
  @override
  _$RepositoryCopyWith<_Repository> get copyWith;
}
