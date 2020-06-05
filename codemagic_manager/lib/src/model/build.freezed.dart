// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'build.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Build _$BuildFromJson(Map<String, dynamic> json) {
  return _Build.fromJson(json);
}

class _$BuildTearOff {
  const _$BuildTearOff();

  _Build call(
      {@required @JsonKey(name: '_id') String id,
      String appId,
      List<Artefact> artefacts,
      String branch,
      List<BuildAction> buildActions,
      Commit commit,
      Config config,
      int index,
      DateTime finishedAt,
      DateTime startedAt,
      BuildStatus status,
      String tag,
      String message,
      String version,
      String workflowId}) {
    return _Build(
      id: id,
      appId: appId,
      artefacts: artefacts,
      branch: branch,
      buildActions: buildActions,
      commit: commit,
      config: config,
      index: index,
      finishedAt: finishedAt,
      startedAt: startedAt,
      status: status,
      tag: tag,
      message: message,
      version: version,
      workflowId: workflowId,
    );
  }
}

// ignore: unused_element
const $Build = _$BuildTearOff();

mixin _$Build {
  @JsonKey(name: '_id')
  String get id;
  String get appId;
  List<Artefact> get artefacts;
  String get branch;
  List<BuildAction> get buildActions;
  Commit get commit;
  Config get config;
  int get index;
  DateTime get finishedAt;
  DateTime get startedAt;
  BuildStatus get status;
  String get tag;
  String get message;
  String get version;
  String get workflowId;

  Map<String, dynamic> toJson();
  $BuildCopyWith<Build> get copyWith;
}

abstract class $BuildCopyWith<$Res> {
  factory $BuildCopyWith(Build value, $Res Function(Build) then) =
      _$BuildCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String appId,
      List<Artefact> artefacts,
      String branch,
      List<BuildAction> buildActions,
      Commit commit,
      Config config,
      int index,
      DateTime finishedAt,
      DateTime startedAt,
      BuildStatus status,
      String tag,
      String message,
      String version,
      String workflowId});

  $CommitCopyWith<$Res> get commit;
  $ConfigCopyWith<$Res> get config;
}

class _$BuildCopyWithImpl<$Res> implements $BuildCopyWith<$Res> {
  _$BuildCopyWithImpl(this._value, this._then);

  final Build _value;
  // ignore: unused_field
  final $Res Function(Build) _then;

  @override
  $Res call({
    Object id = freezed,
    Object appId = freezed,
    Object artefacts = freezed,
    Object branch = freezed,
    Object buildActions = freezed,
    Object commit = freezed,
    Object config = freezed,
    Object index = freezed,
    Object finishedAt = freezed,
    Object startedAt = freezed,
    Object status = freezed,
    Object tag = freezed,
    Object message = freezed,
    Object version = freezed,
    Object workflowId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      appId: appId == freezed ? _value.appId : appId as String,
      artefacts:
          artefacts == freezed ? _value.artefacts : artefacts as List<Artefact>,
      branch: branch == freezed ? _value.branch : branch as String,
      buildActions: buildActions == freezed
          ? _value.buildActions
          : buildActions as List<BuildAction>,
      commit: commit == freezed ? _value.commit : commit as Commit,
      config: config == freezed ? _value.config : config as Config,
      index: index == freezed ? _value.index : index as int,
      finishedAt:
          finishedAt == freezed ? _value.finishedAt : finishedAt as DateTime,
      startedAt:
          startedAt == freezed ? _value.startedAt : startedAt as DateTime,
      status: status == freezed ? _value.status : status as BuildStatus,
      tag: tag == freezed ? _value.tag : tag as String,
      message: message == freezed ? _value.message : message as String,
      version: version == freezed ? _value.version : version as String,
      workflowId:
          workflowId == freezed ? _value.workflowId : workflowId as String,
    ));
  }

  @override
  $CommitCopyWith<$Res> get commit {
    if (_value.commit == null) {
      return null;
    }
    return $CommitCopyWith<$Res>(_value.commit, (value) {
      return _then(_value.copyWith(commit: value));
    });
  }

  @override
  $ConfigCopyWith<$Res> get config {
    if (_value.config == null) {
      return null;
    }
    return $ConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value));
    });
  }
}

abstract class _$BuildCopyWith<$Res> implements $BuildCopyWith<$Res> {
  factory _$BuildCopyWith(_Build value, $Res Function(_Build) then) =
      __$BuildCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String appId,
      List<Artefact> artefacts,
      String branch,
      List<BuildAction> buildActions,
      Commit commit,
      Config config,
      int index,
      DateTime finishedAt,
      DateTime startedAt,
      BuildStatus status,
      String tag,
      String message,
      String version,
      String workflowId});

  @override
  $CommitCopyWith<$Res> get commit;
  @override
  $ConfigCopyWith<$Res> get config;
}

class __$BuildCopyWithImpl<$Res> extends _$BuildCopyWithImpl<$Res>
    implements _$BuildCopyWith<$Res> {
  __$BuildCopyWithImpl(_Build _value, $Res Function(_Build) _then)
      : super(_value, (v) => _then(v as _Build));

  @override
  _Build get _value => super._value as _Build;

  @override
  $Res call({
    Object id = freezed,
    Object appId = freezed,
    Object artefacts = freezed,
    Object branch = freezed,
    Object buildActions = freezed,
    Object commit = freezed,
    Object config = freezed,
    Object index = freezed,
    Object finishedAt = freezed,
    Object startedAt = freezed,
    Object status = freezed,
    Object tag = freezed,
    Object message = freezed,
    Object version = freezed,
    Object workflowId = freezed,
  }) {
    return _then(_Build(
      id: id == freezed ? _value.id : id as String,
      appId: appId == freezed ? _value.appId : appId as String,
      artefacts:
          artefacts == freezed ? _value.artefacts : artefacts as List<Artefact>,
      branch: branch == freezed ? _value.branch : branch as String,
      buildActions: buildActions == freezed
          ? _value.buildActions
          : buildActions as List<BuildAction>,
      commit: commit == freezed ? _value.commit : commit as Commit,
      config: config == freezed ? _value.config : config as Config,
      index: index == freezed ? _value.index : index as int,
      finishedAt:
          finishedAt == freezed ? _value.finishedAt : finishedAt as DateTime,
      startedAt:
          startedAt == freezed ? _value.startedAt : startedAt as DateTime,
      status: status == freezed ? _value.status : status as BuildStatus,
      tag: tag == freezed ? _value.tag : tag as String,
      message: message == freezed ? _value.message : message as String,
      version: version == freezed ? _value.version : version as String,
      workflowId:
          workflowId == freezed ? _value.workflowId : workflowId as String,
    ));
  }
}

@JsonSerializable()
class _$_Build implements _Build {
  _$_Build(
      {@required @JsonKey(name: '_id') this.id,
      this.appId,
      this.artefacts,
      this.branch,
      this.buildActions,
      this.commit,
      this.config,
      this.index,
      this.finishedAt,
      this.startedAt,
      this.status,
      this.tag,
      this.message,
      this.version,
      this.workflowId})
      : assert(id != null);

  factory _$_Build.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String appId;
  @override
  final List<Artefact> artefacts;
  @override
  final String branch;
  @override
  final List<BuildAction> buildActions;
  @override
  final Commit commit;
  @override
  final Config config;
  @override
  final int index;
  @override
  final DateTime finishedAt;
  @override
  final DateTime startedAt;
  @override
  final BuildStatus status;
  @override
  final String tag;
  @override
  final String message;
  @override
  final String version;
  @override
  final String workflowId;

  @override
  String toString() {
    return 'Build(id: $id, appId: $appId, artefacts: $artefacts, branch: $branch, buildActions: $buildActions, commit: $commit, config: $config, index: $index, finishedAt: $finishedAt, startedAt: $startedAt, status: $status, tag: $tag, message: $message, version: $version, workflowId: $workflowId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Build &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.artefacts, artefacts) ||
                const DeepCollectionEquality()
                    .equals(other.artefacts, artefacts)) &&
            (identical(other.branch, branch) ||
                const DeepCollectionEquality().equals(other.branch, branch)) &&
            (identical(other.buildActions, buildActions) ||
                const DeepCollectionEquality()
                    .equals(other.buildActions, buildActions)) &&
            (identical(other.commit, commit) ||
                const DeepCollectionEquality().equals(other.commit, commit)) &&
            (identical(other.config, config) ||
                const DeepCollectionEquality().equals(other.config, config)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.workflowId, workflowId) ||
                const DeepCollectionEquality()
                    .equals(other.workflowId, workflowId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(artefacts) ^
      const DeepCollectionEquality().hash(branch) ^
      const DeepCollectionEquality().hash(buildActions) ^
      const DeepCollectionEquality().hash(commit) ^
      const DeepCollectionEquality().hash(config) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(workflowId);

  @override
  _$BuildCopyWith<_Build> get copyWith =>
      __$BuildCopyWithImpl<_Build>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildToJson(this);
  }
}

abstract class _Build implements Build {
  factory _Build(
      {@required @JsonKey(name: '_id') String id,
      String appId,
      List<Artefact> artefacts,
      String branch,
      List<BuildAction> buildActions,
      Commit commit,
      Config config,
      int index,
      DateTime finishedAt,
      DateTime startedAt,
      BuildStatus status,
      String tag,
      String message,
      String version,
      String workflowId}) = _$_Build;

  factory _Build.fromJson(Map<String, dynamic> json) = _$_Build.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get appId;
  @override
  List<Artefact> get artefacts;
  @override
  String get branch;
  @override
  List<BuildAction> get buildActions;
  @override
  Commit get commit;
  @override
  Config get config;
  @override
  int get index;
  @override
  DateTime get finishedAt;
  @override
  DateTime get startedAt;
  @override
  BuildStatus get status;
  @override
  String get tag;
  @override
  String get message;
  @override
  String get version;
  @override
  String get workflowId;
  @override
  _$BuildCopyWith<_Build> get copyWith;
}
