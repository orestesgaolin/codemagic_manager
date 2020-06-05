// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'build_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BuildResponse _$BuildResponseFromJson(Map<String, dynamic> json) {
  return _BuildResponse.fromJson(json);
}

class _$BuildResponseTearOff {
  const _$BuildResponseTearOff();

  _BuildResponse call({Application application, Build build}) {
    return _BuildResponse(
      application: application,
      build: build,
    );
  }
}

// ignore: unused_element
const $BuildResponse = _$BuildResponseTearOff();

mixin _$BuildResponse {
  Application get application;
  Build get build;

  Map<String, dynamic> toJson();
  $BuildResponseCopyWith<BuildResponse> get copyWith;
}

abstract class $BuildResponseCopyWith<$Res> {
  factory $BuildResponseCopyWith(
          BuildResponse value, $Res Function(BuildResponse) then) =
      _$BuildResponseCopyWithImpl<$Res>;
  $Res call({Application application, Build build});

  $ApplicationCopyWith<$Res> get application;
  $BuildCopyWith<$Res> get build;
}

class _$BuildResponseCopyWithImpl<$Res>
    implements $BuildResponseCopyWith<$Res> {
  _$BuildResponseCopyWithImpl(this._value, this._then);

  final BuildResponse _value;
  // ignore: unused_field
  final $Res Function(BuildResponse) _then;

  @override
  $Res call({
    Object application = freezed,
    Object build = freezed,
  }) {
    return _then(_value.copyWith(
      application: application == freezed
          ? _value.application
          : application as Application,
      build: build == freezed ? _value.build : build as Build,
    ));
  }

  @override
  $ApplicationCopyWith<$Res> get application {
    if (_value.application == null) {
      return null;
    }
    return $ApplicationCopyWith<$Res>(_value.application, (value) {
      return _then(_value.copyWith(application: value));
    });
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

abstract class _$BuildResponseCopyWith<$Res>
    implements $BuildResponseCopyWith<$Res> {
  factory _$BuildResponseCopyWith(
          _BuildResponse value, $Res Function(_BuildResponse) then) =
      __$BuildResponseCopyWithImpl<$Res>;
  @override
  $Res call({Application application, Build build});

  @override
  $ApplicationCopyWith<$Res> get application;
  @override
  $BuildCopyWith<$Res> get build;
}

class __$BuildResponseCopyWithImpl<$Res>
    extends _$BuildResponseCopyWithImpl<$Res>
    implements _$BuildResponseCopyWith<$Res> {
  __$BuildResponseCopyWithImpl(
      _BuildResponse _value, $Res Function(_BuildResponse) _then)
      : super(_value, (v) => _then(v as _BuildResponse));

  @override
  _BuildResponse get _value => super._value as _BuildResponse;

  @override
  $Res call({
    Object application = freezed,
    Object build = freezed,
  }) {
    return _then(_BuildResponse(
      application: application == freezed
          ? _value.application
          : application as Application,
      build: build == freezed ? _value.build : build as Build,
    ));
  }
}

@JsonSerializable()
class _$_BuildResponse implements _BuildResponse {
  _$_BuildResponse({this.application, this.build});

  factory _$_BuildResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildResponseFromJson(json);

  @override
  final Application application;
  @override
  final Build build;

  @override
  String toString() {
    return 'BuildResponse(application: $application, build: $build)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildResponse &&
            (identical(other.application, application) ||
                const DeepCollectionEquality()
                    .equals(other.application, application)) &&
            (identical(other.build, build) ||
                const DeepCollectionEquality().equals(other.build, build)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(application) ^
      const DeepCollectionEquality().hash(build);

  @override
  _$BuildResponseCopyWith<_BuildResponse> get copyWith =>
      __$BuildResponseCopyWithImpl<_BuildResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildResponseToJson(this);
  }
}

abstract class _BuildResponse implements BuildResponse {
  factory _BuildResponse({Application application, Build build}) =
      _$_BuildResponse;

  factory _BuildResponse.fromJson(Map<String, dynamic> json) =
      _$_BuildResponse.fromJson;

  @override
  Application get application;
  @override
  Build get build;
  @override
  _$BuildResponseCopyWith<_BuildResponse> get copyWith;
}
