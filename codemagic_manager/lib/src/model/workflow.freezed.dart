// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workflow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Workflow _$WorkflowFromJson(Map<String, dynamic> json) {
  return _Workflow.fromJson(json);
}

class _$WorkflowTearOff {
  const _$WorkflowTearOff();

  _Workflow call(
      {@required @JsonKey(name: '_id') String id,
      BuildSettings buildSettings,
      CodeSigning codeSigning,
      String instanceType,
      bool isPublic,
      int maxBuildDuration,
      String name,
      Publishers publishers}) {
    return _Workflow(
      id: id,
      buildSettings: buildSettings,
      codeSigning: codeSigning,
      instanceType: instanceType,
      isPublic: isPublic,
      maxBuildDuration: maxBuildDuration,
      name: name,
      publishers: publishers,
    );
  }
}

// ignore: unused_element
const $Workflow = _$WorkflowTearOff();

mixin _$Workflow {
  @JsonKey(name: '_id')
  String get id;
  BuildSettings get buildSettings;
  CodeSigning get codeSigning;
  String get instanceType;
  bool get isPublic;
  int get maxBuildDuration;
  String get name;
  Publishers get publishers;

  Map<String, dynamic> toJson();
  $WorkflowCopyWith<Workflow> get copyWith;
}

abstract class $WorkflowCopyWith<$Res> {
  factory $WorkflowCopyWith(Workflow value, $Res Function(Workflow) then) =
      _$WorkflowCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      BuildSettings buildSettings,
      CodeSigning codeSigning,
      String instanceType,
      bool isPublic,
      int maxBuildDuration,
      String name,
      Publishers publishers});

  $BuildSettingsCopyWith<$Res> get buildSettings;
  $CodeSigningCopyWith<$Res> get codeSigning;
  $PublishersCopyWith<$Res> get publishers;
}

class _$WorkflowCopyWithImpl<$Res> implements $WorkflowCopyWith<$Res> {
  _$WorkflowCopyWithImpl(this._value, this._then);

  final Workflow _value;
  // ignore: unused_field
  final $Res Function(Workflow) _then;

  @override
  $Res call({
    Object id = freezed,
    Object buildSettings = freezed,
    Object codeSigning = freezed,
    Object instanceType = freezed,
    Object isPublic = freezed,
    Object maxBuildDuration = freezed,
    Object name = freezed,
    Object publishers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      buildSettings: buildSettings == freezed
          ? _value.buildSettings
          : buildSettings as BuildSettings,
      codeSigning: codeSigning == freezed
          ? _value.codeSigning
          : codeSigning as CodeSigning,
      instanceType: instanceType == freezed
          ? _value.instanceType
          : instanceType as String,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      maxBuildDuration: maxBuildDuration == freezed
          ? _value.maxBuildDuration
          : maxBuildDuration as int,
      name: name == freezed ? _value.name : name as String,
      publishers:
          publishers == freezed ? _value.publishers : publishers as Publishers,
    ));
  }

  @override
  $BuildSettingsCopyWith<$Res> get buildSettings {
    if (_value.buildSettings == null) {
      return null;
    }
    return $BuildSettingsCopyWith<$Res>(_value.buildSettings, (value) {
      return _then(_value.copyWith(buildSettings: value));
    });
  }

  @override
  $CodeSigningCopyWith<$Res> get codeSigning {
    if (_value.codeSigning == null) {
      return null;
    }
    return $CodeSigningCopyWith<$Res>(_value.codeSigning, (value) {
      return _then(_value.copyWith(codeSigning: value));
    });
  }

  @override
  $PublishersCopyWith<$Res> get publishers {
    if (_value.publishers == null) {
      return null;
    }
    return $PublishersCopyWith<$Res>(_value.publishers, (value) {
      return _then(_value.copyWith(publishers: value));
    });
  }
}

abstract class _$WorkflowCopyWith<$Res> implements $WorkflowCopyWith<$Res> {
  factory _$WorkflowCopyWith(_Workflow value, $Res Function(_Workflow) then) =
      __$WorkflowCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      BuildSettings buildSettings,
      CodeSigning codeSigning,
      String instanceType,
      bool isPublic,
      int maxBuildDuration,
      String name,
      Publishers publishers});

  @override
  $BuildSettingsCopyWith<$Res> get buildSettings;
  @override
  $CodeSigningCopyWith<$Res> get codeSigning;
  @override
  $PublishersCopyWith<$Res> get publishers;
}

class __$WorkflowCopyWithImpl<$Res> extends _$WorkflowCopyWithImpl<$Res>
    implements _$WorkflowCopyWith<$Res> {
  __$WorkflowCopyWithImpl(_Workflow _value, $Res Function(_Workflow) _then)
      : super(_value, (v) => _then(v as _Workflow));

  @override
  _Workflow get _value => super._value as _Workflow;

  @override
  $Res call({
    Object id = freezed,
    Object buildSettings = freezed,
    Object codeSigning = freezed,
    Object instanceType = freezed,
    Object isPublic = freezed,
    Object maxBuildDuration = freezed,
    Object name = freezed,
    Object publishers = freezed,
  }) {
    return _then(_Workflow(
      id: id == freezed ? _value.id : id as String,
      buildSettings: buildSettings == freezed
          ? _value.buildSettings
          : buildSettings as BuildSettings,
      codeSigning: codeSigning == freezed
          ? _value.codeSigning
          : codeSigning as CodeSigning,
      instanceType: instanceType == freezed
          ? _value.instanceType
          : instanceType as String,
      isPublic: isPublic == freezed ? _value.isPublic : isPublic as bool,
      maxBuildDuration: maxBuildDuration == freezed
          ? _value.maxBuildDuration
          : maxBuildDuration as int,
      name: name == freezed ? _value.name : name as String,
      publishers:
          publishers == freezed ? _value.publishers : publishers as Publishers,
    ));
  }
}

@JsonSerializable()
class _$_Workflow implements _Workflow {
  _$_Workflow(
      {@required @JsonKey(name: '_id') this.id,
      this.buildSettings,
      this.codeSigning,
      this.instanceType,
      this.isPublic,
      this.maxBuildDuration,
      this.name,
      this.publishers})
      : assert(id != null);

  factory _$_Workflow.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkflowFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final BuildSettings buildSettings;
  @override
  final CodeSigning codeSigning;
  @override
  final String instanceType;
  @override
  final bool isPublic;
  @override
  final int maxBuildDuration;
  @override
  final String name;
  @override
  final Publishers publishers;

  @override
  String toString() {
    return 'Workflow(id: $id, buildSettings: $buildSettings, codeSigning: $codeSigning, instanceType: $instanceType, isPublic: $isPublic, maxBuildDuration: $maxBuildDuration, name: $name, publishers: $publishers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Workflow &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.buildSettings, buildSettings) ||
                const DeepCollectionEquality()
                    .equals(other.buildSettings, buildSettings)) &&
            (identical(other.codeSigning, codeSigning) ||
                const DeepCollectionEquality()
                    .equals(other.codeSigning, codeSigning)) &&
            (identical(other.instanceType, instanceType) ||
                const DeepCollectionEquality()
                    .equals(other.instanceType, instanceType)) &&
            (identical(other.isPublic, isPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isPublic, isPublic)) &&
            (identical(other.maxBuildDuration, maxBuildDuration) ||
                const DeepCollectionEquality()
                    .equals(other.maxBuildDuration, maxBuildDuration)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.publishers, publishers) ||
                const DeepCollectionEquality()
                    .equals(other.publishers, publishers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(buildSettings) ^
      const DeepCollectionEquality().hash(codeSigning) ^
      const DeepCollectionEquality().hash(instanceType) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(maxBuildDuration) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(publishers);

  @override
  _$WorkflowCopyWith<_Workflow> get copyWith =>
      __$WorkflowCopyWithImpl<_Workflow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkflowToJson(this);
  }
}

abstract class _Workflow implements Workflow {
  factory _Workflow(
      {@required @JsonKey(name: '_id') String id,
      BuildSettings buildSettings,
      CodeSigning codeSigning,
      String instanceType,
      bool isPublic,
      int maxBuildDuration,
      String name,
      Publishers publishers}) = _$_Workflow;

  factory _Workflow.fromJson(Map<String, dynamic> json) = _$_Workflow.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  BuildSettings get buildSettings;
  @override
  CodeSigning get codeSigning;
  @override
  String get instanceType;
  @override
  bool get isPublic;
  @override
  int get maxBuildDuration;
  @override
  String get name;
  @override
  Publishers get publishers;
  @override
  _$WorkflowCopyWith<_Workflow> get copyWith;
}
