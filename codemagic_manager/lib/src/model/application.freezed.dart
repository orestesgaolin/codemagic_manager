// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return _Application.fromJson(json);
}

class _$ApplicationTearOff {
  const _$ApplicationTearOff();

  _Application call(
      {@required @JsonKey(name: '_id') String id,
      String appName,
      bool archived,
      List<String> branches,
      String iconUrl,
      String lastBuildId,
      String ownerTeam,
      List<String> projectFiles,
      Repository repository,
      List<UserRights> userRights,
      List<String> workflowIds,
      Map<String, Workflow> workflows}) {
    return _Application(
      id: id,
      appName: appName,
      archived: archived,
      branches: branches,
      iconUrl: iconUrl,
      lastBuildId: lastBuildId,
      ownerTeam: ownerTeam,
      projectFiles: projectFiles,
      repository: repository,
      userRights: userRights,
      workflowIds: workflowIds,
      workflows: workflows,
    );
  }
}

// ignore: unused_element
const $Application = _$ApplicationTearOff();

mixin _$Application {
  @JsonKey(name: '_id')
  String get id;
  String get appName;
  bool get archived;
  List<String> get branches;
  String get iconUrl;
  String get lastBuildId;
  String get ownerTeam;
  List<String> get projectFiles;
  Repository get repository;
  List<UserRights> get userRights;
  List<String> get workflowIds;
  Map<String, Workflow> get workflows;

  Map<String, dynamic> toJson();
  $ApplicationCopyWith<Application> get copyWith;
}

abstract class $ApplicationCopyWith<$Res> {
  factory $ApplicationCopyWith(
          Application value, $Res Function(Application) then) =
      _$ApplicationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String appName,
      bool archived,
      List<String> branches,
      String iconUrl,
      String lastBuildId,
      String ownerTeam,
      List<String> projectFiles,
      Repository repository,
      List<UserRights> userRights,
      List<String> workflowIds,
      Map<String, Workflow> workflows});

  $RepositoryCopyWith<$Res> get repository;
}

class _$ApplicationCopyWithImpl<$Res> implements $ApplicationCopyWith<$Res> {
  _$ApplicationCopyWithImpl(this._value, this._then);

  final Application _value;
  // ignore: unused_field
  final $Res Function(Application) _then;

  @override
  $Res call({
    Object id = freezed,
    Object appName = freezed,
    Object archived = freezed,
    Object branches = freezed,
    Object iconUrl = freezed,
    Object lastBuildId = freezed,
    Object ownerTeam = freezed,
    Object projectFiles = freezed,
    Object repository = freezed,
    Object userRights = freezed,
    Object workflowIds = freezed,
    Object workflows = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      appName: appName == freezed ? _value.appName : appName as String,
      archived: archived == freezed ? _value.archived : archived as bool,
      branches:
          branches == freezed ? _value.branches : branches as List<String>,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      lastBuildId:
          lastBuildId == freezed ? _value.lastBuildId : lastBuildId as String,
      ownerTeam: ownerTeam == freezed ? _value.ownerTeam : ownerTeam as String,
      projectFiles: projectFiles == freezed
          ? _value.projectFiles
          : projectFiles as List<String>,
      repository:
          repository == freezed ? _value.repository : repository as Repository,
      userRights: userRights == freezed
          ? _value.userRights
          : userRights as List<UserRights>,
      workflowIds: workflowIds == freezed
          ? _value.workflowIds
          : workflowIds as List<String>,
      workflows: workflows == freezed
          ? _value.workflows
          : workflows as Map<String, Workflow>,
    ));
  }

  @override
  $RepositoryCopyWith<$Res> get repository {
    if (_value.repository == null) {
      return null;
    }
    return $RepositoryCopyWith<$Res>(_value.repository, (value) {
      return _then(_value.copyWith(repository: value));
    });
  }
}

abstract class _$ApplicationCopyWith<$Res>
    implements $ApplicationCopyWith<$Res> {
  factory _$ApplicationCopyWith(
          _Application value, $Res Function(_Application) then) =
      __$ApplicationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String appName,
      bool archived,
      List<String> branches,
      String iconUrl,
      String lastBuildId,
      String ownerTeam,
      List<String> projectFiles,
      Repository repository,
      List<UserRights> userRights,
      List<String> workflowIds,
      Map<String, Workflow> workflows});

  @override
  $RepositoryCopyWith<$Res> get repository;
}

class __$ApplicationCopyWithImpl<$Res> extends _$ApplicationCopyWithImpl<$Res>
    implements _$ApplicationCopyWith<$Res> {
  __$ApplicationCopyWithImpl(
      _Application _value, $Res Function(_Application) _then)
      : super(_value, (v) => _then(v as _Application));

  @override
  _Application get _value => super._value as _Application;

  @override
  $Res call({
    Object id = freezed,
    Object appName = freezed,
    Object archived = freezed,
    Object branches = freezed,
    Object iconUrl = freezed,
    Object lastBuildId = freezed,
    Object ownerTeam = freezed,
    Object projectFiles = freezed,
    Object repository = freezed,
    Object userRights = freezed,
    Object workflowIds = freezed,
    Object workflows = freezed,
  }) {
    return _then(_Application(
      id: id == freezed ? _value.id : id as String,
      appName: appName == freezed ? _value.appName : appName as String,
      archived: archived == freezed ? _value.archived : archived as bool,
      branches:
          branches == freezed ? _value.branches : branches as List<String>,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      lastBuildId:
          lastBuildId == freezed ? _value.lastBuildId : lastBuildId as String,
      ownerTeam: ownerTeam == freezed ? _value.ownerTeam : ownerTeam as String,
      projectFiles: projectFiles == freezed
          ? _value.projectFiles
          : projectFiles as List<String>,
      repository:
          repository == freezed ? _value.repository : repository as Repository,
      userRights: userRights == freezed
          ? _value.userRights
          : userRights as List<UserRights>,
      workflowIds: workflowIds == freezed
          ? _value.workflowIds
          : workflowIds as List<String>,
      workflows: workflows == freezed
          ? _value.workflows
          : workflows as Map<String, Workflow>,
    ));
  }
}

@JsonSerializable()
class _$_Application implements _Application {
  _$_Application(
      {@required @JsonKey(name: '_id') this.id,
      this.appName,
      this.archived,
      this.branches,
      this.iconUrl,
      this.lastBuildId,
      this.ownerTeam,
      this.projectFiles,
      this.repository,
      this.userRights,
      this.workflowIds,
      this.workflows})
      : assert(id != null);

  factory _$_Application.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String appName;
  @override
  final bool archived;
  @override
  final List<String> branches;
  @override
  final String iconUrl;
  @override
  final String lastBuildId;
  @override
  final String ownerTeam;
  @override
  final List<String> projectFiles;
  @override
  final Repository repository;
  @override
  final List<UserRights> userRights;
  @override
  final List<String> workflowIds;
  @override
  final Map<String, Workflow> workflows;

  @override
  String toString() {
    return 'Application(id: $id, appName: $appName, archived: $archived, branches: $branches, iconUrl: $iconUrl, lastBuildId: $lastBuildId, ownerTeam: $ownerTeam, projectFiles: $projectFiles, repository: $repository, userRights: $userRights, workflowIds: $workflowIds, workflows: $workflows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Application &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.branches, branches) ||
                const DeepCollectionEquality()
                    .equals(other.branches, branches)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.lastBuildId, lastBuildId) ||
                const DeepCollectionEquality()
                    .equals(other.lastBuildId, lastBuildId)) &&
            (identical(other.ownerTeam, ownerTeam) ||
                const DeepCollectionEquality()
                    .equals(other.ownerTeam, ownerTeam)) &&
            (identical(other.projectFiles, projectFiles) ||
                const DeepCollectionEquality()
                    .equals(other.projectFiles, projectFiles)) &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)) &&
            (identical(other.userRights, userRights) ||
                const DeepCollectionEquality()
                    .equals(other.userRights, userRights)) &&
            (identical(other.workflowIds, workflowIds) ||
                const DeepCollectionEquality()
                    .equals(other.workflowIds, workflowIds)) &&
            (identical(other.workflows, workflows) ||
                const DeepCollectionEquality()
                    .equals(other.workflows, workflows)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(branches) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(lastBuildId) ^
      const DeepCollectionEquality().hash(ownerTeam) ^
      const DeepCollectionEquality().hash(projectFiles) ^
      const DeepCollectionEquality().hash(repository) ^
      const DeepCollectionEquality().hash(userRights) ^
      const DeepCollectionEquality().hash(workflowIds) ^
      const DeepCollectionEquality().hash(workflows);

  @override
  _$ApplicationCopyWith<_Application> get copyWith =>
      __$ApplicationCopyWithImpl<_Application>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationToJson(this);
  }
}

abstract class _Application implements Application {
  factory _Application(
      {@required @JsonKey(name: '_id') String id,
      String appName,
      bool archived,
      List<String> branches,
      String iconUrl,
      String lastBuildId,
      String ownerTeam,
      List<String> projectFiles,
      Repository repository,
      List<UserRights> userRights,
      List<String> workflowIds,
      Map<String, Workflow> workflows}) = _$_Application;

  factory _Application.fromJson(Map<String, dynamic> json) =
      _$_Application.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get appName;
  @override
  bool get archived;
  @override
  List<String> get branches;
  @override
  String get iconUrl;
  @override
  String get lastBuildId;
  @override
  String get ownerTeam;
  @override
  List<String> get projectFiles;
  @override
  Repository get repository;
  @override
  List<UserRights> get userRights;
  @override
  List<String> get workflowIds;
  @override
  Map<String, Workflow> get workflows;
  @override
  _$ApplicationCopyWith<_Application> get copyWith;
}
