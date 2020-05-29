// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'publishers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Publishers _$PublishersFromJson(Map<String, dynamic> json) {
  return _Publishers.fromJson(json);
}

class _$PublishersTearOff {
  const _$PublishersTearOff();

  _Publishers call(
      {PublishersAppstoreConnect appStoreConnect,
      PublishersEmail email,
      PublishersGithubReleases githubReleases}) {
    return _Publishers(
      appStoreConnect: appStoreConnect,
      email: email,
      githubReleases: githubReleases,
    );
  }
}

// ignore: unused_element
const $Publishers = _$PublishersTearOff();

mixin _$Publishers {
  PublishersAppstoreConnect get appStoreConnect;
  PublishersEmail get email;
  PublishersGithubReleases get githubReleases;

  Map<String, dynamic> toJson();
  $PublishersCopyWith<Publishers> get copyWith;
}

abstract class $PublishersCopyWith<$Res> {
  factory $PublishersCopyWith(
          Publishers value, $Res Function(Publishers) then) =
      _$PublishersCopyWithImpl<$Res>;
  $Res call(
      {PublishersAppstoreConnect appStoreConnect,
      PublishersEmail email,
      PublishersGithubReleases githubReleases});

  $PublishersAppstoreConnectCopyWith<$Res> get appStoreConnect;
  $PublishersEmailCopyWith<$Res> get email;
  $PublishersGithubReleasesCopyWith<$Res> get githubReleases;
}

class _$PublishersCopyWithImpl<$Res> implements $PublishersCopyWith<$Res> {
  _$PublishersCopyWithImpl(this._value, this._then);

  final Publishers _value;
  // ignore: unused_field
  final $Res Function(Publishers) _then;

  @override
  $Res call({
    Object appStoreConnect = freezed,
    Object email = freezed,
    Object githubReleases = freezed,
  }) {
    return _then(_value.copyWith(
      appStoreConnect: appStoreConnect == freezed
          ? _value.appStoreConnect
          : appStoreConnect as PublishersAppstoreConnect,
      email: email == freezed ? _value.email : email as PublishersEmail,
      githubReleases: githubReleases == freezed
          ? _value.githubReleases
          : githubReleases as PublishersGithubReleases,
    ));
  }

  @override
  $PublishersAppstoreConnectCopyWith<$Res> get appStoreConnect {
    if (_value.appStoreConnect == null) {
      return null;
    }
    return $PublishersAppstoreConnectCopyWith<$Res>(_value.appStoreConnect,
        (value) {
      return _then(_value.copyWith(appStoreConnect: value));
    });
  }

  @override
  $PublishersEmailCopyWith<$Res> get email {
    if (_value.email == null) {
      return null;
    }
    return $PublishersEmailCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $PublishersGithubReleasesCopyWith<$Res> get githubReleases {
    if (_value.githubReleases == null) {
      return null;
    }
    return $PublishersGithubReleasesCopyWith<$Res>(_value.githubReleases,
        (value) {
      return _then(_value.copyWith(githubReleases: value));
    });
  }
}

abstract class _$PublishersCopyWith<$Res> implements $PublishersCopyWith<$Res> {
  factory _$PublishersCopyWith(
          _Publishers value, $Res Function(_Publishers) then) =
      __$PublishersCopyWithImpl<$Res>;
  @override
  $Res call(
      {PublishersAppstoreConnect appStoreConnect,
      PublishersEmail email,
      PublishersGithubReleases githubReleases});

  @override
  $PublishersAppstoreConnectCopyWith<$Res> get appStoreConnect;
  @override
  $PublishersEmailCopyWith<$Res> get email;
  @override
  $PublishersGithubReleasesCopyWith<$Res> get githubReleases;
}

class __$PublishersCopyWithImpl<$Res> extends _$PublishersCopyWithImpl<$Res>
    implements _$PublishersCopyWith<$Res> {
  __$PublishersCopyWithImpl(
      _Publishers _value, $Res Function(_Publishers) _then)
      : super(_value, (v) => _then(v as _Publishers));

  @override
  _Publishers get _value => super._value as _Publishers;

  @override
  $Res call({
    Object appStoreConnect = freezed,
    Object email = freezed,
    Object githubReleases = freezed,
  }) {
    return _then(_Publishers(
      appStoreConnect: appStoreConnect == freezed
          ? _value.appStoreConnect
          : appStoreConnect as PublishersAppstoreConnect,
      email: email == freezed ? _value.email : email as PublishersEmail,
      githubReleases: githubReleases == freezed
          ? _value.githubReleases
          : githubReleases as PublishersGithubReleases,
    ));
  }
}

@JsonSerializable()
class _$_Publishers implements _Publishers {
  _$_Publishers({this.appStoreConnect, this.email, this.githubReleases});

  factory _$_Publishers.fromJson(Map<String, dynamic> json) =>
      _$_$_PublishersFromJson(json);

  @override
  final PublishersAppstoreConnect appStoreConnect;
  @override
  final PublishersEmail email;
  @override
  final PublishersGithubReleases githubReleases;

  @override
  String toString() {
    return 'Publishers(appStoreConnect: $appStoreConnect, email: $email, githubReleases: $githubReleases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Publishers &&
            (identical(other.appStoreConnect, appStoreConnect) ||
                const DeepCollectionEquality()
                    .equals(other.appStoreConnect, appStoreConnect)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.githubReleases, githubReleases) ||
                const DeepCollectionEquality()
                    .equals(other.githubReleases, githubReleases)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appStoreConnect) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(githubReleases);

  @override
  _$PublishersCopyWith<_Publishers> get copyWith =>
      __$PublishersCopyWithImpl<_Publishers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublishersToJson(this);
  }
}

abstract class _Publishers implements Publishers {
  factory _Publishers(
      {PublishersAppstoreConnect appStoreConnect,
      PublishersEmail email,
      PublishersGithubReleases githubReleases}) = _$_Publishers;

  factory _Publishers.fromJson(Map<String, dynamic> json) =
      _$_Publishers.fromJson;

  @override
  PublishersAppstoreConnect get appStoreConnect;
  @override
  PublishersEmail get email;
  @override
  PublishersGithubReleases get githubReleases;
  @override
  _$PublishersCopyWith<_Publishers> get copyWith;
}
