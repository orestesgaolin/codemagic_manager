// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'code_signing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CodeSigning _$CodeSigningFromJson(Map<String, dynamic> json) {
  return _CodeSigning.fromJson(json);
}

class _$CodeSigningTearOff {
  const _$CodeSigningTearOff();

  _CodeSigning call({CodeSigningAndroid android, CodeSigningIos ios}) {
    return _CodeSigning(
      android: android,
      ios: ios,
    );
  }
}

// ignore: unused_element
const $CodeSigning = _$CodeSigningTearOff();

mixin _$CodeSigning {
  CodeSigningAndroid get android;
  CodeSigningIos get ios;

  Map<String, dynamic> toJson();
  $CodeSigningCopyWith<CodeSigning> get copyWith;
}

abstract class $CodeSigningCopyWith<$Res> {
  factory $CodeSigningCopyWith(
          CodeSigning value, $Res Function(CodeSigning) then) =
      _$CodeSigningCopyWithImpl<$Res>;
  $Res call({CodeSigningAndroid android, CodeSigningIos ios});

  $CodeSigningAndroidCopyWith<$Res> get android;
  $CodeSigningIosCopyWith<$Res> get ios;
}

class _$CodeSigningCopyWithImpl<$Res> implements $CodeSigningCopyWith<$Res> {
  _$CodeSigningCopyWithImpl(this._value, this._then);

  final CodeSigning _value;
  // ignore: unused_field
  final $Res Function(CodeSigning) _then;

  @override
  $Res call({
    Object android = freezed,
    Object ios = freezed,
  }) {
    return _then(_value.copyWith(
      android:
          android == freezed ? _value.android : android as CodeSigningAndroid,
      ios: ios == freezed ? _value.ios : ios as CodeSigningIos,
    ));
  }

  @override
  $CodeSigningAndroidCopyWith<$Res> get android {
    if (_value.android == null) {
      return null;
    }
    return $CodeSigningAndroidCopyWith<$Res>(_value.android, (value) {
      return _then(_value.copyWith(android: value));
    });
  }

  @override
  $CodeSigningIosCopyWith<$Res> get ios {
    if (_value.ios == null) {
      return null;
    }
    return $CodeSigningIosCopyWith<$Res>(_value.ios, (value) {
      return _then(_value.copyWith(ios: value));
    });
  }
}

abstract class _$CodeSigningCopyWith<$Res>
    implements $CodeSigningCopyWith<$Res> {
  factory _$CodeSigningCopyWith(
          _CodeSigning value, $Res Function(_CodeSigning) then) =
      __$CodeSigningCopyWithImpl<$Res>;
  @override
  $Res call({CodeSigningAndroid android, CodeSigningIos ios});

  @override
  $CodeSigningAndroidCopyWith<$Res> get android;
  @override
  $CodeSigningIosCopyWith<$Res> get ios;
}

class __$CodeSigningCopyWithImpl<$Res> extends _$CodeSigningCopyWithImpl<$Res>
    implements _$CodeSigningCopyWith<$Res> {
  __$CodeSigningCopyWithImpl(
      _CodeSigning _value, $Res Function(_CodeSigning) _then)
      : super(_value, (v) => _then(v as _CodeSigning));

  @override
  _CodeSigning get _value => super._value as _CodeSigning;

  @override
  $Res call({
    Object android = freezed,
    Object ios = freezed,
  }) {
    return _then(_CodeSigning(
      android:
          android == freezed ? _value.android : android as CodeSigningAndroid,
      ios: ios == freezed ? _value.ios : ios as CodeSigningIos,
    ));
  }
}

@JsonSerializable()
class _$_CodeSigning implements _CodeSigning {
  _$_CodeSigning({this.android, this.ios});

  factory _$_CodeSigning.fromJson(Map<String, dynamic> json) =>
      _$_$_CodeSigningFromJson(json);

  @override
  final CodeSigningAndroid android;
  @override
  final CodeSigningIos ios;

  @override
  String toString() {
    return 'CodeSigning(android: $android, ios: $ios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSigning &&
            (identical(other.android, android) ||
                const DeepCollectionEquality()
                    .equals(other.android, android)) &&
            (identical(other.ios, ios) ||
                const DeepCollectionEquality().equals(other.ios, ios)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(android) ^
      const DeepCollectionEquality().hash(ios);

  @override
  _$CodeSigningCopyWith<_CodeSigning> get copyWith =>
      __$CodeSigningCopyWithImpl<_CodeSigning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodeSigningToJson(this);
  }
}

abstract class _CodeSigning implements CodeSigning {
  factory _CodeSigning({CodeSigningAndroid android, CodeSigningIos ios}) =
      _$_CodeSigning;

  factory _CodeSigning.fromJson(Map<String, dynamic> json) =
      _$_CodeSigning.fromJson;

  @override
  CodeSigningAndroid get android;
  @override
  CodeSigningIos get ios;
  @override
  _$CodeSigningCopyWith<_CodeSigning> get copyWith;
}
