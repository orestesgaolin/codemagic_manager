// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'commit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Commit _$CommitFromJson(Map<String, dynamic> json) {
  return _Commit.fromJson(json);
}

class _$CommitTearOff {
  const _$CommitTearOff();

  _Commit call(
      {String authorAvatarUrl,
      String authorName,
      String commitMessage,
      String hash,
      String url}) {
    return _Commit(
      authorAvatarUrl: authorAvatarUrl,
      authorName: authorName,
      commitMessage: commitMessage,
      hash: hash,
      url: url,
    );
  }
}

// ignore: unused_element
const $Commit = _$CommitTearOff();

mixin _$Commit {
  String get authorAvatarUrl;
  String get authorName;
  String get commitMessage;
  String get hash;
  String get url;

  Map<String, dynamic> toJson();
  $CommitCopyWith<Commit> get copyWith;
}

abstract class $CommitCopyWith<$Res> {
  factory $CommitCopyWith(Commit value, $Res Function(Commit) then) =
      _$CommitCopyWithImpl<$Res>;
  $Res call(
      {String authorAvatarUrl,
      String authorName,
      String commitMessage,
      String hash,
      String url});
}

class _$CommitCopyWithImpl<$Res> implements $CommitCopyWith<$Res> {
  _$CommitCopyWithImpl(this._value, this._then);

  final Commit _value;
  // ignore: unused_field
  final $Res Function(Commit) _then;

  @override
  $Res call({
    Object authorAvatarUrl = freezed,
    Object authorName = freezed,
    Object commitMessage = freezed,
    Object hash = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      commitMessage: commitMessage == freezed
          ? _value.commitMessage
          : commitMessage as String,
      hash: hash == freezed ? _value.hash : hash as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$CommitCopyWith<$Res> implements $CommitCopyWith<$Res> {
  factory _$CommitCopyWith(_Commit value, $Res Function(_Commit) then) =
      __$CommitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authorAvatarUrl,
      String authorName,
      String commitMessage,
      String hash,
      String url});
}

class __$CommitCopyWithImpl<$Res> extends _$CommitCopyWithImpl<$Res>
    implements _$CommitCopyWith<$Res> {
  __$CommitCopyWithImpl(_Commit _value, $Res Function(_Commit) _then)
      : super(_value, (v) => _then(v as _Commit));

  @override
  _Commit get _value => super._value as _Commit;

  @override
  $Res call({
    Object authorAvatarUrl = freezed,
    Object authorName = freezed,
    Object commitMessage = freezed,
    Object hash = freezed,
    Object url = freezed,
  }) {
    return _then(_Commit(
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      commitMessage: commitMessage == freezed
          ? _value.commitMessage
          : commitMessage as String,
      hash: hash == freezed ? _value.hash : hash as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_Commit implements _Commit {
  _$_Commit(
      {this.authorAvatarUrl,
      this.authorName,
      this.commitMessage,
      this.hash,
      this.url});

  factory _$_Commit.fromJson(Map<String, dynamic> json) =>
      _$_$_CommitFromJson(json);

  @override
  final String authorAvatarUrl;
  @override
  final String authorName;
  @override
  final String commitMessage;
  @override
  final String hash;
  @override
  final String url;

  @override
  String toString() {
    return 'Commit(authorAvatarUrl: $authorAvatarUrl, authorName: $authorName, commitMessage: $commitMessage, hash: $hash, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Commit &&
            (identical(other.authorAvatarUrl, authorAvatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.authorAvatarUrl, authorAvatarUrl)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.commitMessage, commitMessage) ||
                const DeepCollectionEquality()
                    .equals(other.commitMessage, commitMessage)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authorAvatarUrl) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(commitMessage) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$CommitCopyWith<_Commit> get copyWith =>
      __$CommitCopyWithImpl<_Commit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommitToJson(this);
  }
}

abstract class _Commit implements Commit {
  factory _Commit(
      {String authorAvatarUrl,
      String authorName,
      String commitMessage,
      String hash,
      String url}) = _$_Commit;

  factory _Commit.fromJson(Map<String, dynamic> json) = _$_Commit.fromJson;

  @override
  String get authorAvatarUrl;
  @override
  String get authorName;
  @override
  String get commitMessage;
  @override
  String get hash;
  @override
  String get url;
  @override
  _$CommitCopyWith<_Commit> get copyWith;
}
