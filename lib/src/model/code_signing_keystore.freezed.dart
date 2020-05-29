// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'code_signing_keystore.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CodeSigningKeystore _$CodeSigningKeystoreFromJson(Map<String, dynamic> json) {
  return _CodeSigningKeystore.fromJson(json);
}

class _$CodeSigningKeystoreTearOff {
  const _$CodeSigningKeystoreTearOff();

  _CodeSigningKeystore call({String fileName, String filePath}) {
    return _CodeSigningKeystore(
      fileName: fileName,
      filePath: filePath,
    );
  }
}

// ignore: unused_element
const $CodeSigningKeystore = _$CodeSigningKeystoreTearOff();

mixin _$CodeSigningKeystore {
  String get fileName;
  String get filePath;

  Map<String, dynamic> toJson();
  $CodeSigningKeystoreCopyWith<CodeSigningKeystore> get copyWith;
}

abstract class $CodeSigningKeystoreCopyWith<$Res> {
  factory $CodeSigningKeystoreCopyWith(
          CodeSigningKeystore value, $Res Function(CodeSigningKeystore) then) =
      _$CodeSigningKeystoreCopyWithImpl<$Res>;
  $Res call({String fileName, String filePath});
}

class _$CodeSigningKeystoreCopyWithImpl<$Res>
    implements $CodeSigningKeystoreCopyWith<$Res> {
  _$CodeSigningKeystoreCopyWithImpl(this._value, this._then);

  final CodeSigningKeystore _value;
  // ignore: unused_field
  final $Res Function(CodeSigningKeystore) _then;

  @override
  $Res call({
    Object fileName = freezed,
    Object filePath = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
    ));
  }
}

abstract class _$CodeSigningKeystoreCopyWith<$Res>
    implements $CodeSigningKeystoreCopyWith<$Res> {
  factory _$CodeSigningKeystoreCopyWith(_CodeSigningKeystore value,
          $Res Function(_CodeSigningKeystore) then) =
      __$CodeSigningKeystoreCopyWithImpl<$Res>;
  @override
  $Res call({String fileName, String filePath});
}

class __$CodeSigningKeystoreCopyWithImpl<$Res>
    extends _$CodeSigningKeystoreCopyWithImpl<$Res>
    implements _$CodeSigningKeystoreCopyWith<$Res> {
  __$CodeSigningKeystoreCopyWithImpl(
      _CodeSigningKeystore _value, $Res Function(_CodeSigningKeystore) _then)
      : super(_value, (v) => _then(v as _CodeSigningKeystore));

  @override
  _CodeSigningKeystore get _value => super._value as _CodeSigningKeystore;

  @override
  $Res call({
    Object fileName = freezed,
    Object filePath = freezed,
  }) {
    return _then(_CodeSigningKeystore(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
    ));
  }
}

@JsonSerializable()
class _$_CodeSigningKeystore implements _CodeSigningKeystore {
  _$_CodeSigningKeystore({this.fileName, this.filePath});

  factory _$_CodeSigningKeystore.fromJson(Map<String, dynamic> json) =>
      _$_$_CodeSigningKeystoreFromJson(json);

  @override
  final String fileName;
  @override
  final String filePath;

  @override
  String toString() {
    return 'CodeSigningKeystore(fileName: $fileName, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeSigningKeystore &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(filePath);

  @override
  _$CodeSigningKeystoreCopyWith<_CodeSigningKeystore> get copyWith =>
      __$CodeSigningKeystoreCopyWithImpl<_CodeSigningKeystore>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CodeSigningKeystoreToJson(this);
  }
}

abstract class _CodeSigningKeystore implements CodeSigningKeystore {
  factory _CodeSigningKeystore({String fileName, String filePath}) =
      _$_CodeSigningKeystore;

  factory _CodeSigningKeystore.fromJson(Map<String, dynamic> json) =
      _$_CodeSigningKeystore.fromJson;

  @override
  String get fileName;
  @override
  String get filePath;
  @override
  _$CodeSigningKeystoreCopyWith<_CodeSigningKeystore> get copyWith;
}
