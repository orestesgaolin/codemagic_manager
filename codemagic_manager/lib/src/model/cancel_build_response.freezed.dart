// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cancel_build_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CancelBuildResponse _$CancelBuildResponseFromJson(Map<String, dynamic> json) {
  return _CancelBuildResponse.fromJson(json);
}

class _$CancelBuildResponseTearOff {
  const _$CancelBuildResponseTearOff();

  _CancelBuildResponse call({Build build}) {
    return _CancelBuildResponse(
      build: build,
    );
  }
}

// ignore: unused_element
const $CancelBuildResponse = _$CancelBuildResponseTearOff();

mixin _$CancelBuildResponse {
  Build get build;

  Map<String, dynamic> toJson();
  $CancelBuildResponseCopyWith<CancelBuildResponse> get copyWith;
}

abstract class $CancelBuildResponseCopyWith<$Res> {
  factory $CancelBuildResponseCopyWith(
          CancelBuildResponse value, $Res Function(CancelBuildResponse) then) =
      _$CancelBuildResponseCopyWithImpl<$Res>;
  $Res call({Build build});

  $BuildCopyWith<$Res> get build;
}

class _$CancelBuildResponseCopyWithImpl<$Res>
    implements $CancelBuildResponseCopyWith<$Res> {
  _$CancelBuildResponseCopyWithImpl(this._value, this._then);

  final CancelBuildResponse _value;
  // ignore: unused_field
  final $Res Function(CancelBuildResponse) _then;

  @override
  $Res call({
    Object build = freezed,
  }) {
    return _then(_value.copyWith(
      build: build == freezed ? _value.build : build as Build,
    ));
  }

  @override
  $BuildCopyWith<$Res> get build {
    if (_value.build == null) {
      return null;
    }
    return $BuildCopyWith<$Res>(_value.build, (value) {
      return _then(_value.copyWith(build: value));
    });
  }
}

abstract class _$CancelBuildResponseCopyWith<$Res>
    implements $CancelBuildResponseCopyWith<$Res> {
  factory _$CancelBuildResponseCopyWith(_CancelBuildResponse value,
          $Res Function(_CancelBuildResponse) then) =
      __$CancelBuildResponseCopyWithImpl<$Res>;
  @override
  $Res call({Build build});

  @override
  $BuildCopyWith<$Res> get build;
}

class __$CancelBuildResponseCopyWithImpl<$Res>
    extends _$CancelBuildResponseCopyWithImpl<$Res>
    implements _$CancelBuildResponseCopyWith<$Res> {
  __$CancelBuildResponseCopyWithImpl(
      _CancelBuildResponse _value, $Res Function(_CancelBuildResponse) _then)
      : super(_value, (v) => _then(v as _CancelBuildResponse));

  @override
  _CancelBuildResponse get _value => super._value as _CancelBuildResponse;

  @override
  $Res call({
    Object build = freezed,
  }) {
    return _then(_CancelBuildResponse(
      build: build == freezed ? _value.build : build as Build,
    ));
  }
}

@JsonSerializable()
class _$_CancelBuildResponse implements _CancelBuildResponse {
  _$_CancelBuildResponse({this.build});

  factory _$_CancelBuildResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CancelBuildResponseFromJson(json);

  @override
  final Build build;

  @override
  String toString() {
    return 'CancelBuildResponse(build: $build)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancelBuildResponse &&
            (identical(other.build, build) ||
                const DeepCollectionEquality().equals(other.build, build)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(build);

  @override
  _$CancelBuildResponseCopyWith<_CancelBuildResponse> get copyWith =>
      __$CancelBuildResponseCopyWithImpl<_CancelBuildResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CancelBuildResponseToJson(this);
  }
}

abstract class _CancelBuildResponse implements CancelBuildResponse {
  factory _CancelBuildResponse({Build build}) = _$_CancelBuildResponse;

  factory _CancelBuildResponse.fromJson(Map<String, dynamic> json) =
      _$_CancelBuildResponse.fromJson;

  @override
  Build get build;
  @override
  _$CancelBuildResponseCopyWith<_CancelBuildResponse> get copyWith;
}
