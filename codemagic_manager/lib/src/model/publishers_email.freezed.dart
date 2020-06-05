// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'publishers_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PublishersEmail _$PublishersEmailFromJson(Map<String, dynamic> json) {
  return _PublishersEmail.fromJson(json);
}

class _$PublishersEmailTearOff {
  const _$PublishersEmailTearOff();

  _PublishersEmail call({bool enabled, List<String> recipients}) {
    return _PublishersEmail(
      enabled: enabled,
      recipients: recipients,
    );
  }
}

// ignore: unused_element
const $PublishersEmail = _$PublishersEmailTearOff();

mixin _$PublishersEmail {
  bool get enabled;
  List<String> get recipients;

  Map<String, dynamic> toJson();
  $PublishersEmailCopyWith<PublishersEmail> get copyWith;
}

abstract class $PublishersEmailCopyWith<$Res> {
  factory $PublishersEmailCopyWith(
          PublishersEmail value, $Res Function(PublishersEmail) then) =
      _$PublishersEmailCopyWithImpl<$Res>;
  $Res call({bool enabled, List<String> recipients});
}

class _$PublishersEmailCopyWithImpl<$Res>
    implements $PublishersEmailCopyWith<$Res> {
  _$PublishersEmailCopyWithImpl(this._value, this._then);

  final PublishersEmail _value;
  // ignore: unused_field
  final $Res Function(PublishersEmail) _then;

  @override
  $Res call({
    Object enabled = freezed,
    Object recipients = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      recipients: recipients == freezed
          ? _value.recipients
          : recipients as List<String>,
    ));
  }
}

abstract class _$PublishersEmailCopyWith<$Res>
    implements $PublishersEmailCopyWith<$Res> {
  factory _$PublishersEmailCopyWith(
          _PublishersEmail value, $Res Function(_PublishersEmail) then) =
      __$PublishersEmailCopyWithImpl<$Res>;
  @override
  $Res call({bool enabled, List<String> recipients});
}

class __$PublishersEmailCopyWithImpl<$Res>
    extends _$PublishersEmailCopyWithImpl<$Res>
    implements _$PublishersEmailCopyWith<$Res> {
  __$PublishersEmailCopyWithImpl(
      _PublishersEmail _value, $Res Function(_PublishersEmail) _then)
      : super(_value, (v) => _then(v as _PublishersEmail));

  @override
  _PublishersEmail get _value => super._value as _PublishersEmail;

  @override
  $Res call({
    Object enabled = freezed,
    Object recipients = freezed,
  }) {
    return _then(_PublishersEmail(
      enabled: enabled == freezed ? _value.enabled : enabled as bool,
      recipients: recipients == freezed
          ? _value.recipients
          : recipients as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_PublishersEmail implements _PublishersEmail {
  _$_PublishersEmail({this.enabled, this.recipients});

  factory _$_PublishersEmail.fromJson(Map<String, dynamic> json) =>
      _$_$_PublishersEmailFromJson(json);

  @override
  final bool enabled;
  @override
  final List<String> recipients;

  @override
  String toString() {
    return 'PublishersEmail(enabled: $enabled, recipients: $recipients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublishersEmail &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.recipients, recipients) ||
                const DeepCollectionEquality()
                    .equals(other.recipients, recipients)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(recipients);

  @override
  _$PublishersEmailCopyWith<_PublishersEmail> get copyWith =>
      __$PublishersEmailCopyWithImpl<_PublishersEmail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublishersEmailToJson(this);
  }
}

abstract class _PublishersEmail implements PublishersEmail {
  factory _PublishersEmail({bool enabled, List<String> recipients}) =
      _$_PublishersEmail;

  factory _PublishersEmail.fromJson(Map<String, dynamic> json) =
      _$_PublishersEmail.fromJson;

  @override
  bool get enabled;
  @override
  List<String> get recipients;
  @override
  _$PublishersEmailCopyWith<_PublishersEmail> get copyWith;
}
