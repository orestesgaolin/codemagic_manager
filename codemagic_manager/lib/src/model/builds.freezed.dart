// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'builds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Builds _$BuildsFromJson(Map<String, dynamic> json) {
  return _Builds.fromJson(json);
}

class _$BuildsTearOff {
  const _$BuildsTearOff();

  _Builds call({List<Application> applications, List<Build> builds}) {
    return _Builds(
      applications: applications,
      builds: builds,
    );
  }
}

// ignore: unused_element
const $Builds = _$BuildsTearOff();

mixin _$Builds {
  List<Application> get applications;
  List<Build> get builds;

  Map<String, dynamic> toJson();
  $BuildsCopyWith<Builds> get copyWith;
}

abstract class $BuildsCopyWith<$Res> {
  factory $BuildsCopyWith(Builds value, $Res Function(Builds) then) =
      _$BuildsCopyWithImpl<$Res>;
  $Res call({List<Application> applications, List<Build> builds});
}

class _$BuildsCopyWithImpl<$Res> implements $BuildsCopyWith<$Res> {
  _$BuildsCopyWithImpl(this._value, this._then);

  final Builds _value;
  // ignore: unused_field
  final $Res Function(Builds) _then;

  @override
  $Res call({
    Object applications = freezed,
    Object builds = freezed,
  }) {
    return _then(_value.copyWith(
      applications: applications == freezed
          ? _value.applications
          : applications as List<Application>,
      builds: builds == freezed ? _value.builds : builds as List<Build>,
    ));
  }
}

abstract class _$BuildsCopyWith<$Res> implements $BuildsCopyWith<$Res> {
  factory _$BuildsCopyWith(_Builds value, $Res Function(_Builds) then) =
      __$BuildsCopyWithImpl<$Res>;
  @override
  $Res call({List<Application> applications, List<Build> builds});
}

class __$BuildsCopyWithImpl<$Res> extends _$BuildsCopyWithImpl<$Res>
    implements _$BuildsCopyWith<$Res> {
  __$BuildsCopyWithImpl(_Builds _value, $Res Function(_Builds) _then)
      : super(_value, (v) => _then(v as _Builds));

  @override
  _Builds get _value => super._value as _Builds;

  @override
  $Res call({
    Object applications = freezed,
    Object builds = freezed,
  }) {
    return _then(_Builds(
      applications: applications == freezed
          ? _value.applications
          : applications as List<Application>,
      builds: builds == freezed ? _value.builds : builds as List<Build>,
    ));
  }
}

@JsonSerializable()
class _$_Builds implements _Builds {
  _$_Builds({this.applications, this.builds});

  factory _$_Builds.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildsFromJson(json);

  @override
  final List<Application> applications;
  @override
  final List<Build> builds;

  @override
  String toString() {
    return 'Builds(applications: $applications, builds: $builds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Builds &&
            (identical(other.applications, applications) ||
                const DeepCollectionEquality()
                    .equals(other.applications, applications)) &&
            (identical(other.builds, builds) ||
                const DeepCollectionEquality().equals(other.builds, builds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applications) ^
      const DeepCollectionEquality().hash(builds);

  @override
  _$BuildsCopyWith<_Builds> get copyWith =>
      __$BuildsCopyWithImpl<_Builds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildsToJson(this);
  }
}

abstract class _Builds implements Builds {
  factory _Builds({List<Application> applications, List<Build> builds}) =
      _$_Builds;

  factory _Builds.fromJson(Map<String, dynamic> json) = _$_Builds.fromJson;

  @override
  List<Application> get applications;
  @override
  List<Build> get builds;
  @override
  _$BuildsCopyWith<_Builds> get copyWith;
}
